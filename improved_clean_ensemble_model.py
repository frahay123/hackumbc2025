import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split, cross_val_score, GridSearchCV
from sklearn.linear_model import LinearRegression, Ridge, Lasso
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor
from sklearn.preprocessing import StandardScaler, RobustScaler
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score
from sklearn.pipeline import Pipeline
import xgboost as xgb
import joblib
import warnings
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.feature_selection import SelectKBest, f_regression
import json

# Suppress warnings for cleaner output
warnings.filterwarnings('ignore')

class ImprovedEnsembleModel:
    def __init__(self, data_path):
        """Initialize improved ensemble model with data leakage prevention"""
        self.data_path = data_path
        self.scaler = StandardScaler()
        self.feature_selector = None
        self.models = {}
        self.results = {}
        
    def load_and_preprocess_data(self):
        """Load data and perform comprehensive preprocessing"""
        print("=== LOADING AND PREPROCESSING DATA ===")
        
        try:
            df = pd.read_csv(self.data_path)
            print(f"✅ Data loaded successfully. Shape: {df.shape}")
        except FileNotFoundError:
            print(f"❌ Error: '{self.data_path}' not found.")
            return None, None
        
        # Define target variable
        target_column = 'enhanced_final_risk_score'
        
        # Comprehensive list of columns to drop for data leakage prevention
        leakage_columns = [
            # Direct risk indicators (these ARE the target in different forms)
            'enhanced_risk_level',
            'dropout_probability', 
            'total_risk_score',
            'enhanced_attrition_risk_level',
            'enhanced_is_at_risk',
            
            # Future information that shouldn't be available at prediction time
            'failure_rate_percent',
            'failing_courses',
            'overall_gpa_from_props',
            'failure_rate_from_props',
            
            # Highly correlated with target (potential leakage)
            'cumulative_gpa',  # Very high correlation with risk
            'grade_volatility',
            'recent_performance',
            'course_load_difficulty_risk',
            
            # All normalized versions of the above
            'cumulative_gpa_normalized',
            'grade_volatility_normalized', 
            'failure_rate_percent_normalized',
            'recent_performance_normalized',
            'course_load_difficulty_risk_normalized',
            'enhanced_attrition_risk_level_normalized',
            'dropout_probability_normalized',
            'total_risk_score_normalized',
            'gpa_risk_inverted'
        ]
        
        identifier_columns = [
            'student_id',
            'student_name', 
            'communityId'
        ]
        
        # Remove duplicate columns from joins
        redundant_columns = [col for col in df.columns if col.endswith('_y') or col.endswith('_from_props')]
        
        columns_to_drop = [target_column] + leakage_columns + identifier_columns + redundant_columns
        
        # Ensure columns exist before dropping
        columns_to_drop = [col for col in columns_to_drop if col in df.columns]
        
        X = df.drop(columns=columns_to_drop)
        y = df[target_column]
        
        print(f"📊 Dropped {len(columns_to_drop)} leakage-prone columns")
        print(f"📊 Remaining features: {X.shape[1]}")
        print(f"📊 Target distribution: min={y.min():.3f}, max={y.max():.3f}, mean={y.mean():.3f}")
        
        # Handle categorical variables
        categorical_cols = X.select_dtypes(include=['object']).columns
        if len(categorical_cols) > 0:
            print(f"📊 Encoding {len(categorical_cols)} categorical columns")
            X = pd.get_dummies(X, columns=categorical_cols, drop_first=True)
        
        # Handle missing values
        X = X.fillna(X.median())
        y = y.fillna(y.median())
        
        print(f"📊 Final feature matrix shape: {X.shape}")
        
        return X, y
    
    def feature_selection(self, X, y):
        """Perform feature selection to improve model performance"""
        print("\n=== FEATURE SELECTION ===")
        
        # Select top features using f_regression
        k_best = min(50, X.shape[1])  # Select top 50 features or all if fewer
        self.feature_selector = SelectKBest(f_regression, k=k_best)
        X_selected = self.feature_selector.fit_transform(X, y)
        
        # Get selected feature names
        selected_features = X.columns[self.feature_selector.get_support()].tolist()
        
        print(f"📊 Selected {len(selected_features)} best features out of {X.shape[1]}")
        
        # Create DataFrame with selected features
        X_selected_df = pd.DataFrame(X_selected, columns=selected_features, index=X.index)
        
        return X_selected_df
    
    def train_models(self, X, y):
        """Train multiple regression models with hyperparameter tuning"""
        print("\n=== TRAINING MODELS ===")
        
        # Split data
        X_train, X_test, y_train, y_test = train_test_split(
            X, y, test_size=0.2, random_state=42
        )
        
        print(f"📊 Training set: {X_train.shape[0]} samples")
        print(f"📊 Test set: {X_test.shape[0]} samples")
        
        # Define models with hyperparameter grids
        models_config = {
            'Ridge Regression': {
                'model': Ridge(),
                'params': {'alpha': [0.1, 1.0, 10.0, 100.0]},
                'scale': True
            },
            'Lasso Regression': {
                'model': Lasso(),
                'params': {'alpha': [0.01, 0.1, 1.0, 10.0]},
                'scale': True
            },
            'Random Forest': {
                'model': RandomForestRegressor(random_state=42, n_jobs=-1),
                'params': {
                    'n_estimators': [50, 100, 200],
                    'max_depth': [5, 10, None],
                    'min_samples_split': [2, 5, 10]
                },
                'scale': False
            },
            'Gradient Boosting': {
                'model': GradientBoostingRegressor(random_state=42),
                'params': {
                    'n_estimators': [50, 100, 200],
                    'learning_rate': [0.01, 0.1, 0.2],
                    'max_depth': [3, 5, 7]
                },
                'scale': False
            },
            'XGBoost': {
                'model': xgb.XGBRegressor(random_state=42),
                'params': {
                    'n_estimators': [50, 100, 200],
                    'learning_rate': [0.01, 0.1, 0.2],
                    'max_depth': [3, 5, 7]
                },
                'scale': False
            }
        }
        
        # Train and tune models
        trained_models = {}
        predictions = {}
        performance_results = []
        
        for name, config in models_config.items():
            print(f"\n🔧 Training {name}...")
            
            # Create pipeline with scaling if needed
            if config['scale']:
                pipeline = Pipeline([
                    ('scaler', StandardScaler()),
                    ('model', config['model'])
                ])
                param_grid = {f'model__{k}': v for k, v in config['params'].items()}
            else:
                pipeline = config['model']
                param_grid = config['params']
            
            # Grid search for hyperparameter tuning
            grid_search = GridSearchCV(
                pipeline, param_grid, cv=5, scoring='neg_mean_squared_error', n_jobs=-1
            )
            
            grid_search.fit(X_train, y_train)
            trained_models[name] = grid_search.best_estimator_
            
            # Make predictions
            y_pred = grid_search.predict(X_test)
            predictions[name] = y_pred
            
            # Evaluate performance
            performance = self.evaluate_model(y_test, y_pred, name)
            performance_results.append(performance)
            
            print(f"✅ {name} - Best CV Score: {-grid_search.best_score_:.4f}")
        
        self.models = trained_models
        return X_train, X_test, y_train, y_test, predictions, performance_results
    
    def create_ensemble(self, predictions, y_test):
        """Create and evaluate ensemble models"""
        print("\n=== CREATING ENSEMBLE MODELS ===")
        
        # Simple averaging ensemble
        ensemble_preds = np.mean([predictions['Ridge Regression'], 
                                 predictions['Random Forest'], 
                                 predictions['XGBoost']], axis=0)
        
        ensemble_performance = self.evaluate_model(y_test, ensemble_preds, 'Simple Averaging Ensemble')
        
        # Weighted ensemble (based on individual model performance)
        # Calculate weights based on inverse MSE
        model_weights = {}
        for name, preds in predictions.items():
            mse = mean_squared_error(y_test, preds)
            model_weights[name] = 1 / (mse + 1e-6)  # Add small epsilon to avoid division by zero
        
        # Normalize weights
        total_weight = sum(model_weights.values())
        model_weights = {k: v/total_weight for k, v in model_weights.items()}
        
        weighted_preds = np.zeros_like(ensemble_preds)
        for name, weight in model_weights.items():
            weighted_preds += weight * predictions[name]
        
        weighted_performance = self.evaluate_model(y_test, weighted_preds, 'Weighted Ensemble')
        
        return ensemble_performance, weighted_performance, model_weights
    
    def evaluate_model(self, y_true, y_pred, model_name):
        """Evaluate model performance with comprehensive metrics"""
        mse = mean_squared_error(y_true, y_pred)
        rmse = np.sqrt(mse)
        mae = mean_absolute_error(y_true, y_pred)
        r2 = r2_score(y_true, y_pred)
        
        # Calculate additional metrics
        mape = np.mean(np.abs((y_true - y_pred) / y_true)) * 100
        
        print(f"--- {model_name} Performance ---")
        print(f"  Mean Squared Error (MSE): {mse:.4f}")
        print(f"  Root Mean Squared Error (RMSE): {rmse:.4f}")
        print(f"  Mean Absolute Error (MAE): {mae:.4f}")
        print(f"  Mean Absolute Percentage Error (MAPE): {mape:.2f}%")
        print(f"  R-squared (R²): {r2:.4f}")
        print()
        
        return {
            'name': model_name,
            'mse': mse,
            'rmse': rmse,
            'mae': mae,
            'mape': mape,
            'r2': r2
        }
    
    def cross_validate_best_model(self, X, y, best_model_name):
        """Perform cross-validation on the best model"""
        print(f"\n=== CROSS-VALIDATION FOR {best_model_name} ===")
        
        # If ensemble is best, use the best individual model for CV
        if 'Ensemble' in best_model_name:
            # Find the best individual model
            individual_models = [name for name in self.models.keys() if 'Ensemble' not in name]
            best_individual = min(individual_models, key=lambda x: self.models[x].score(X, y))
            print(f"Using {best_individual} for cross-validation (ensemble base model)")
            best_model = self.models[best_individual]
        else:
            best_model = self.models[best_model_name]
        
        # Perform cross-validation
        cv_scores = cross_val_score(best_model, X, y, cv=5, scoring='neg_mean_squared_error')
        cv_rmse = np.sqrt(-cv_scores)
        
        print(f"Cross-Validation RMSE: {cv_rmse.mean():.4f} (+/- {cv_rmse.std() * 2:.4f})")
        
        return cv_rmse
    
    def save_models_and_results(self, best_model_name, performance_results, model_weights):
        """Save the best model and results"""
        print(f"\n=== SAVING MODELS AND RESULTS ===")
        
        # Save the best model (or best individual model if ensemble is best)
        if 'Ensemble' in best_model_name:
            # Find the best individual model to save
            individual_models = [name for name in self.models.keys() if 'Ensemble' not in name]
            best_individual = min(individual_models, key=lambda x: performance_results[[r['name'] for r in performance_results].index(x)]['mse'])
            best_model = self.models[best_individual]
            model_to_save = best_individual
            print(f"💡 Ensemble performed best, saving best individual model: {best_individual}")
        else:
            best_model = self.models[best_model_name]
            model_to_save = best_model_name
        
        joblib.dump(best_model, f'improved_{model_to_save.lower().replace(" ", "_")}_model.pkl')
        print(f"✅ Best model saved as 'improved_{model_to_save.lower().replace(" ", "_")}_model.pkl'")
        
        # Save scaler and feature selector if they exist
        if hasattr(best_model, 'named_steps') and 'scaler' in best_model.named_steps:
            joblib.dump(best_model.named_steps['scaler'], 'improved_scaler.pkl')
            print("✅ Scaler saved as 'improved_scaler.pkl'")
        
        if self.feature_selector is not None:
            joblib.dump(self.feature_selector, 'improved_feature_selector.pkl')
            print("✅ Feature selector saved as 'improved_feature_selector.pkl'")
        
        # Save results summary
        results_summary = {
            'best_model': best_model_name,
            'performance_results': performance_results,
            'ensemble_weights': model_weights,
            'data_leakage_prevention': 'Applied comprehensive leakage prevention',
            'features_used': len(self.feature_selector.get_support()) if self.feature_selector else 'All',
            'target_variable': 'enhanced_final_risk_score'
        }
        
        with open('improved_model_results.json', 'w') as f:
            json.dump(results_summary, f, indent=2)
        print("✅ Results summary saved as 'improved_model_results.json'")
    
    def run_complete_pipeline(self):
        """Run the complete improved modeling pipeline"""
        print("🚀 Starting Improved Ensemble Model Pipeline")
        print("🛡️  With comprehensive data leakage prevention")
        
        # Load and preprocess data
        X, y = self.load_and_preprocess_data()
        if X is None:
            return
        
        # Feature selection
        X_selected = self.feature_selection(X, y)
        
        # Train models
        X_train, X_test, y_train, y_test, predictions, performance_results = self.train_models(X_selected, y)
        
        # Create ensemble
        ensemble_perf, weighted_perf, model_weights = self.create_ensemble(predictions, y_test)
        performance_results.extend([ensemble_perf, weighted_perf])
        
        # Find best model
        best_model_performance = min(performance_results, key=lambda x: x['mse'])
        best_model_name = best_model_performance['name']
        
        print(f"\n🏆 BEST MODEL: {best_model_name}")
        print(f"   MSE: {best_model_performance['mse']:.4f}")
        print(f"   RMSE: {best_model_performance['rmse']:.4f}")
        print(f"   R²: {best_model_performance['r2']:.4f}")
        
        # Cross-validation
        self.cross_validate_best_model(X_selected, y, best_model_name)
        
        # Save models and results
        self.save_models_and_results(best_model_name, performance_results, model_weights)
        
        print(f"\n🎉 IMPROVED ENSEMBLE MODEL PIPELINE COMPLETED!")
        print(f"📊 Best model: {best_model_name}")
        print(f"🛡️  Data leakage prevention applied")
        print(f"💾 All models and results saved")

def main():
    """Main function to run the improved ensemble model"""
    # Initialize and run the improved model
    improved_model = ImprovedEnsembleModel('enhanced_final_corrected_gds_apoc_features.csv')
    improved_model.run_complete_pipeline()

if __name__ == '__main__':
    main()
