#!/usr/bin/env python3
"""
Debug the model to understand which features are most important
and why the differentiation is poor.
"""

import joblib
import pandas as pd
import numpy as np

def debug_model():
    """Debug the model to understand feature importance"""
    
    print("🔍 MODEL DEBUGGING")
    print("=" * 60)
    
    # Load model and feature selector
    try:
        model = joblib.load('improved_gradient_boosting_model.pkl')
        feature_selector = joblib.load('improved_feature_selector.pkl')
        print("✅ Model components loaded successfully")
    except Exception as e:
        print(f"❌ Error loading model: {e}")
        return
    
    # Get feature names
    feature_names = feature_selector.get_feature_names_out()
    print(f"📊 Model uses {len(feature_names)} features")
    
    # Get feature importance
    if hasattr(model, 'feature_importances_'):
        importances = model.feature_importances_
        
        # Create importance dataframe
        importance_df = pd.DataFrame({
            'feature': feature_names,
            'importance': importances
        }).sort_values('importance', ascending=False)
        
        print("\n🏆 TOP 15 MOST IMPORTANT FEATURES:")
        print("-" * 60)
        for i, (_, row) in enumerate(importance_df.head(15).iterrows()):
            print(f"{i+1:2d}. {row['feature']:35} | {row['importance']:.4f}")
        
        print("\n📉 BOTTOM 10 LEAST IMPORTANT FEATURES:")
        print("-" * 60)
        for i, (_, row) in enumerate(importance_df.tail(10).iterrows()):
            print(f"{i+1:2d}. {row['feature']:35} | {row['importance']:.4f}")
        
        # Check for zero importance features
        zero_importance = importance_df[importance_df['importance'] == 0]
        if len(zero_importance) > 0:
            print(f"\n⚠️  {len(zero_importance)} features have ZERO importance!")
            print("These features are not contributing to predictions:")
            for _, row in zero_importance.iterrows():
                print(f"   • {row['feature']}")
    
    # Test with sample data
    print("\n🧪 TESTING WITH SAMPLE PROFILES:")
    print("-" * 60)
    
    # Sample profiles (simplified)
    profiles = {
        "Will Fail College": {
            "preferred_course_load": 6.0,
            "work_hours_per_week": 35.0,
            "total_courses_completed": 8,
            "total_credits_earned": 24,
            "enjoyment_rate": 0.2,
            "avg_current_difficulty": 9.0,
            "max_current_difficulty": 10.0,
            "weighted_current_difficulty": 9.5,
            "courses_with_met_prereqs": 3,
            "total_prereqs_met": 2,
            "prereq_preparedness_ratio": 0.3,
            "learning_style_success_rate": 0.2,
            "degree_completion_ratio": 0.2,
            "current_course_load": 6,
            "current_credits": 18,
            "peer_network_size": 5,
            "peer_avg_gpa": 2.0,
            "professors_known": 2,
            "page_views_x": 200,
            "textbooks_accessed_x": 10,
            "pagerank": 0.1,
            "degree": 0.3,
        },
        
        "Is OK": {
            "preferred_course_load": 4.0,
            "work_hours_per_week": 15.0,
            "total_courses_completed": 20,
            "total_credits_earned": 60,
            "enjoyment_rate": 0.6,
            "avg_current_difficulty": 6.0,
            "max_current_difficulty": 7.0,
            "weighted_current_difficulty": 6.2,
            "courses_with_met_prereqs": 18,
            "total_prereqs_met": 15,
            "prereq_preparedness_ratio": 0.75,
            "learning_style_success_rate": 0.6,
            "degree_completion_ratio": 0.6,
            "current_course_load": 4,
            "current_credits": 12,
            "peer_network_size": 20,
            "peer_avg_gpa": 3.0,
            "professors_known": 6,
            "page_views_x": 1200,
            "textbooks_accessed_x": 60,
            "pagerank": 0.5,
            "degree": 0.7,
        },
        
        "Perfect Student": {
            "preferred_course_load": 4.0,
            "work_hours_per_week": 8.0,
            "total_courses_completed": 30,
            "total_credits_earned": 90,
            "enjoyment_rate": 0.95,
            "avg_current_difficulty": 4.0,
            "max_current_difficulty": 5.0,
            "weighted_current_difficulty": 4.2,
            "courses_with_met_prereqs": 30,
            "total_prereqs_met": 25,
            "prereq_preparedness_ratio": 0.95,
            "learning_style_success_rate": 0.95,
            "degree_completion_ratio": 0.9,
            "current_course_load": 4,
            "current_credits": 12,
            "peer_network_size": 40,
            "peer_avg_gpa": 3.8,
            "professors_known": 12,
            "page_views_x": 3000,
            "textbooks_accessed_x": 150,
            "pagerank": 0.9,
            "degree": 0.95,
        }
    }
    
    # Add normalized features and categorical features
    for name, profile in profiles.items():
        # Add normalized features (simplified)
        profile.update({
            "total_courses_completed_normalized": min(profile["total_courses_completed"] / 30, 1),
            "total_credits_earned_normalized": min(profile["total_credits_earned"] / 90, 1),
            "failing_courses_normalized": max(0, 1 - profile["enjoyment_rate"]),
            "enjoyment_rate_normalized": profile["enjoyment_rate"],
            "max_completed_difficulty_normalized": profile.get("max_completed_difficulty", 6.5) / 10,
            "avg_current_difficulty_normalized": profile["avg_current_difficulty"] / 10,
            "max_current_difficulty_normalized": profile["max_current_difficulty"] / 10,
            "weighted_current_difficulty_normalized": profile["weighted_current_difficulty"] / 10,
            "courses_with_met_prereqs_normalized": min(profile["courses_with_met_prereqs"] / 30, 1),
            "total_prereqs_met_normalized": min(profile["total_prereqs_met"] / 25, 1),
            "prereq_preparedness_ratio_normalized": min(profile["prereq_preparedness_ratio"] / 2, 1),
            "learning_style_success_rate_normalized": profile["learning_style_success_rate"],
            "degree_completion_ratio_normalized": profile["degree_completion_ratio"],
            "current_course_load_normalized": profile["current_course_load"] / 8,
            "current_credits_normalized": profile["current_credits"] / 20,
            "preferred_course_load_normalized": profile["preferred_course_load"] / 8,
            "work_hours_per_week_normalized": profile["work_hours_per_week"] / 40,
            "peer_network_size_normalized": min(profile["peer_network_size"] / 40, 1),
            "peer_avg_gpa_normalized": profile["peer_avg_gpa"] / 4,
            "professors_known_normalized": min(profile["professors_known"] / 12, 1),
            "pagerank_normalized": profile["pagerank"],
            "degree_normalized": profile["degree"],
            # Categorical features
            "learning_style_Visual": 1,
            "financial_aid_status_Unknown": 0,
            "degree_name_Bachelor_of_Arts_in_Computer_Science": 0,
            "degree_name_Bachelor_of_Science_in_Biology": 0,
            "degree_name_Bachelor_of_Science_in_Computer_Science": 1
        })
    
    # Test predictions
    for name, profile in profiles.items():
        try:
            # Create DataFrame
            df = pd.DataFrame([profile])
            
            # Ensure all required features are present
            missing_features = set(feature_names) - set(df.columns)
            if missing_features:
                for feature in missing_features:
                    df[feature] = 0.0
            
            # Select features in correct order
            df_selected = df[feature_names]
            
            # Make prediction
            prediction = model.predict(df_selected)[0]
            prediction = np.clip(prediction, 0.0, 1.0)
            
            print(f"{name:20} | Risk Score: {prediction:.3f}")
            
        except Exception as e:
            print(f"{name:20} | Error: {e}")
    
    print("\n💡 ANALYSIS:")
    print("-" * 60)
    print("If 'Is OK' and 'Perfect Student' still have similar scores,")
    print("the issue might be:")
    print("1. The model is not sensitive to the features that differentiate them")
    print("2. The most important features are similar between these profiles")
    print("3. The model was trained on data where these distinctions weren't clear")

if __name__ == "__main__":
    debug_model()
