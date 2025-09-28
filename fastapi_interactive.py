from fastapi import FastAPI, HTTPException, Depends
from fastapi.middleware.cors import CORSMiddleware
from fastapi.staticfiles import StaticFiles
from fastapi.responses import HTMLResponse
from pydantic import BaseModel, Field
from typing import List, Dict, Optional, Any
import pandas as pd
import numpy as np
import joblib
import json
import os
from datetime import datetime
import logging

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

from contextlib import asynccontextmanager

@asynccontextmanager
async def lifespan(app: FastAPI):
    """Lifespan context manager for startup and shutdown events"""
    # Startup
    load_models()
    yield
    # Shutdown (if needed)
    pass

# Initialize FastAPI app with lifespan
app = FastAPI(
    title="Student Risk Prediction API - Interactive",
    description="Interactive FastAPI with hotkey samples and custom parameter testing",
    version="3.0.0",
    docs_url="/docs",
    redoc_url="/redoc",
    lifespan=lifespan
)

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Global variables for model components
models = {}
feature_selector = None
model_info = {}

class StudentFeatures(BaseModel):
    """Pydantic model for student features"""
    
    # Core features
    preferred_course_load: float = Field(..., ge=1.0, le=8.0, description="Preferred course load")
    work_hours_per_week: float = Field(..., ge=0.0, le=40.0, description="Work hours per week")
    total_courses_completed: int = Field(..., ge=0, description="Total courses completed")
    total_credits_earned: int = Field(..., ge=0, description="Total credits earned")
    failing_courses: int = Field(..., ge=0, le=3, description="Number of failing courses")
    enjoyment_rate: float = Field(..., ge=0.0, le=1.0, description="Course enjoyment rate")
    max_completed_difficulty: float = Field(..., ge=0.0, le=10.0, description="Max completed difficulty")
    avg_current_difficulty: float = Field(..., ge=0.0, le=10.0, description="Average current difficulty")
    max_current_difficulty: float = Field(..., ge=0.0, le=10.0, description="Max current difficulty")
    weighted_current_difficulty: float = Field(..., ge=0.0, le=10.0, description="Weighted current difficulty")
    courses_with_met_prereqs: int = Field(..., ge=0, description="Courses with met prerequisites")
    total_prereqs_met: int = Field(..., ge=0, description="Total prerequisites met")
    prereq_preparedness_ratio: float = Field(..., ge=0.0, le=2.0, description="Prerequisite preparedness ratio")
    learning_style_success_rate: float = Field(..., ge=0.0, le=1.0, description="Learning style success rate")
    degree_completion_ratio: float = Field(..., ge=0.0, le=1.0, description="Degree completion ratio")
    current_course_load: int = Field(..., ge=1, le=8, description="Current course load")
    current_credits: int = Field(..., ge=0, description="Current credits")
    peer_network_size: int = Field(..., ge=0, description="Peer network size")
    peer_avg_gpa: float = Field(..., ge=0.0, le=4.0, description="Peer average GPA")
    professors_known: int = Field(..., ge=0, description="Professors known")
    page_views_x: int = Field(..., ge=0, description="Page views")
    textbooks_accessed_x: int = Field(..., ge=0, description="Textbooks accessed")
    pagerank: float = Field(..., ge=0.0, le=1.0, description="PageRank score")
    degree: float = Field(..., ge=0.0, le=1.0, description="Degree score")
    
    # Normalized features
    total_courses_completed_normalized: float = Field(..., ge=0.0, le=1.0)
    total_credits_earned_normalized: float = Field(..., ge=0.0, le=1.0)
    failing_courses_normalized: float = Field(..., ge=0.0, le=1.0)
    enjoyment_rate_normalized: float = Field(..., ge=0.0, le=1.0)
    max_completed_difficulty_normalized: float = Field(..., ge=0.0, le=1.0)
    avg_current_difficulty_normalized: float = Field(..., ge=0.0, le=1.0)
    max_current_difficulty_normalized: float = Field(..., ge=0.0, le=1.0)
    weighted_current_difficulty_normalized: float = Field(..., ge=0.0, le=1.0)
    courses_with_met_prereqs_normalized: float = Field(..., ge=0.0, le=1.0)
    total_prereqs_met_normalized: float = Field(..., ge=0.0, le=1.0)
    prereq_preparedness_ratio_normalized: float = Field(..., ge=0.0, le=1.0)
    learning_style_success_rate_normalized: float = Field(..., ge=0.0, le=1.0)
    degree_completion_ratio_normalized: float = Field(..., ge=0.0, le=1.0)
    current_course_load_normalized: float = Field(..., ge=0.0, le=1.0)
    current_credits_normalized: float = Field(..., ge=0.0, le=1.0)
    preferred_course_load_normalized: float = Field(..., ge=0.0, le=1.0)
    work_hours_per_week_normalized: float = Field(..., ge=0.0, le=1.0)
    peer_network_size_normalized: float = Field(..., ge=0.0, le=1.0)
    peer_avg_gpa_normalized: float = Field(..., ge=0.0, le=1.0)
    professors_known_normalized: float = Field(..., ge=0.0, le=1.0)
    pagerank_normalized: float = Field(..., ge=0.0, le=1.0)
    degree_normalized: float = Field(..., ge=0.0, le=1.0)
    
    # Categorical features
    learning_style_Visual: int = Field(..., ge=0, le=1)
    financial_aid_status_Unknown: int = Field(..., ge=0, le=1)
    degree_name_Bachelor_of_Arts_in_Computer_Science: int = Field(..., ge=0, le=1)
    degree_name_Bachelor_of_Science_in_Biology: int = Field(..., ge=0, le=1)
    degree_name_Bachelor_of_Science_in_Computer_Science: int = Field(..., ge=0, le=1)

class PredictionResponse(BaseModel):
    """Response model for predictions"""
    student_type: str = Field(..., description="Type of student profile")
    risk_score: float = Field(..., description="Predicted risk score (0.0-1.0)")
    risk_level: str = Field(..., description="Risk level classification")
    confidence: float = Field(..., description="Prediction confidence")
    class_prediction: str = Field(..., description="Three-class prediction")
    timestamp: str = Field(..., description="Prediction timestamp")

def load_models():
    """Load model components"""
    global models, feature_selector, model_info
    
    try:
        # Load model info
        with open('improved_model_results.json', 'r') as f:
            model_info = json.load(f)
        
        # Load the model
        models['gradient_boosting'] = joblib.load('improved_gradient_boosting_model.pkl')
        
        # Load feature selector
        feature_selector = joblib.load('improved_feature_selector.pkl')
        
        logger.info("Model components loaded successfully")
        logger.info(f"Model: {model_info.get('best_model', 'Unknown')}")
        logger.info(f"Features used: {model_info.get('features_used', 'Unknown')}")
        
    except Exception as e:
        logger.error(f"Error loading models: {str(e)}")
        raise HTTPException(status_code=500, detail=f"Failed to load models: {str(e)}")

def get_sample_profiles():
    """Get three extreme sample student profiles"""
    return {
        "Will Fail College": {
            # EXTREME HIGH RISK profile
            "preferred_course_load": 8.0,
            "work_hours_per_week": 40.0,
            "total_courses_completed": 5,
            "total_credits_earned": 15,
            "failing_courses": 3,
            "enjoyment_rate": 0.1,
            "max_completed_difficulty": 3.0,
            "avg_current_difficulty": 10.0,
            "max_current_difficulty": 10.0,
            "weighted_current_difficulty": 10.0,
            "courses_with_met_prereqs": 1,
            "total_prereqs_met": 1,
            "prereq_preparedness_ratio": 0.1,
            "learning_style_success_rate": 0.1,
            "degree_completion_ratio": 0.1,
            "current_course_load": 8,
            "current_credits": 24,
            "peer_network_size": 2,
            "peer_avg_gpa": 1.5,
            "professors_known": 1,
            "page_views_x": 50,
            "textbooks_accessed_x": 5,
            "pagerank": 0.05,
            "degree": 0.1,
            "total_courses_completed_normalized": 0.17,
            "total_credits_earned_normalized": 0.17,
            "failing_courses_normalized": 1.0,
            "enjoyment_rate_normalized": 0.1,
            "max_completed_difficulty_normalized": 0.3,
            "avg_current_difficulty_normalized": 1.0,
            "max_current_difficulty_normalized": 1.0,
            "weighted_current_difficulty_normalized": 1.0,
            "courses_with_met_prereqs_normalized": 0.03,
            "total_prereqs_met_normalized": 0.04,
            "prereq_preparedness_ratio_normalized": 0.05,
            "learning_style_success_rate_normalized": 0.1,
            "degree_completion_ratio_normalized": 0.1,
            "current_course_load_normalized": 1.0,
            "current_credits_normalized": 1.0,
            "preferred_course_load_normalized": 1.0,
            "work_hours_per_week_normalized": 1.0,
            "peer_network_size_normalized": 0.05,
            "peer_avg_gpa_normalized": 0.375,
            "professors_known_normalized": 0.08,
            "pagerank_normalized": 0.05,
            "degree_normalized": 0.1,
            "learning_style_Visual": 0,
            "financial_aid_status_Unknown": 1,
            "degree_name_Bachelor_of_Arts_in_Computer_Science": 0,
            "degree_name_Bachelor_of_Science_in_Biology": 1,
            "degree_name_Bachelor_of_Science_in_Computer_Science": 0
        },
        
        "Is OK": {
            # Average student profile
            "preferred_course_load": 4.0,
            "work_hours_per_week": 15.0,
            "total_courses_completed": 20,
            "total_credits_earned": 60,
            "failing_courses": 1,
            "enjoyment_rate": 0.6,
            "max_completed_difficulty": 6.5,
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
            "total_courses_completed_normalized": 0.6,
            "total_credits_earned_normalized": 0.6,
            "failing_courses_normalized": 0.33,
            "enjoyment_rate_normalized": 0.6,
            "max_completed_difficulty_normalized": 0.65,
            "avg_current_difficulty_normalized": 0.6,
            "max_current_difficulty_normalized": 0.7,
            "weighted_current_difficulty_normalized": 0.62,
            "courses_with_met_prereqs_normalized": 0.6,
            "total_prereqs_met_normalized": 0.6,
            "prereq_preparedness_ratio_normalized": 0.75,
            "learning_style_success_rate_normalized": 0.6,
            "degree_completion_ratio_normalized": 0.6,
            "current_course_load_normalized": 0.5,
            "current_credits_normalized": 0.6,
            "preferred_course_load_normalized": 0.5,
            "work_hours_per_week_normalized": 0.375,
            "peer_network_size_normalized": 0.6,
            "peer_avg_gpa_normalized": 0.75,
            "professors_known_normalized": 0.6,
            "pagerank_normalized": 0.5,
            "degree_normalized": 0.7,
            "learning_style_Visual": 1,
            "financial_aid_status_Unknown": 0,
            "degree_name_Bachelor_of_Arts_in_Computer_Science": 1,
            "degree_name_Bachelor_of_Science_in_Biology": 0,
            "degree_name_Bachelor_of_Science_in_Computer_Science": 0
        },
        
        "Perfect Student": {
            # EXTREME LOW RISK profile
            "preferred_course_load": 3.0,
            "work_hours_per_week": 5.0,
            "total_courses_completed": 35,
            "total_credits_earned": 105,
            "failing_courses": 0,
            "enjoyment_rate": 0.98,
            "max_completed_difficulty": 8.0,
            "avg_current_difficulty": 3.0,
            "max_current_difficulty": 4.0,
            "weighted_current_difficulty": 3.2,
            "courses_with_met_prereqs": 35,
            "total_prereqs_met": 30,
            "prereq_preparedness_ratio": 0.98,
            "learning_style_success_rate": 0.98,
            "degree_completion_ratio": 0.95,
            "current_course_load": 3,
            "current_credits": 9,
            "peer_network_size": 50,
            "peer_avg_gpa": 3.9,
            "professors_known": 15,
            "page_views_x": 5000,
            "textbooks_accessed_x": 200,
            "pagerank": 0.95,
            "degree": 0.98,
            "total_courses_completed_normalized": 1.0,
            "total_credits_earned_normalized": 1.0,
            "failing_courses_normalized": 0.0,
            "enjoyment_rate_normalized": 0.98,
            "max_completed_difficulty_normalized": 0.8,
            "avg_current_difficulty_normalized": 0.3,
            "max_current_difficulty_normalized": 0.4,
            "weighted_current_difficulty_normalized": 0.32,
            "courses_with_met_prereqs_normalized": 1.0,
            "total_prereqs_met_normalized": 1.0,
            "prereq_preparedness_ratio_normalized": 0.49,
            "learning_style_success_rate_normalized": 0.98,
            "degree_completion_ratio_normalized": 0.95,
            "current_course_load_normalized": 0.375,
            "current_credits_normalized": 0.45,
            "preferred_course_load_normalized": 0.375,
            "work_hours_per_week_normalized": 0.125,
            "peer_network_size_normalized": 1.0,
            "peer_avg_gpa_normalized": 0.975,
            "professors_known_normalized": 1.0,
            "pagerank_normalized": 0.95,
            "degree_normalized": 0.98,
            "learning_style_Visual": 1,
            "financial_aid_status_Unknown": 0,
            "degree_name_Bachelor_of_Arts_in_Computer_Science": 0,
            "degree_name_Bachelor_of_Science_in_Biology": 0,
            "degree_name_Bachelor_of_Science_in_Computer_Science": 1
        }
    }

def preprocess_features(student_data: StudentFeatures) -> np.ndarray:
    """Preprocess student features for prediction"""
    try:
        # Convert to dictionary
        features_dict = student_data.model_dump()
        
        # Create DataFrame
        df = pd.DataFrame([features_dict])
        
        # Apply feature selection
        if feature_selector is not None:
            selected_features = feature_selector.get_feature_names_out()
            
            # Ensure all required features are present
            missing_features = set(selected_features) - set(df.columns)
            if missing_features:
                logger.warning(f"Missing features: {missing_features}")
                for feature in missing_features:
                    df[feature] = 0.0
            
            # Select only the features used during training
            df_selected = df[selected_features]
            features_array = df_selected.values
        else:
            features_array = df.values
        
        return features_array
        
    except Exception as e:
        logger.error(f"Error preprocessing features: {str(e)}")
        raise HTTPException(status_code=400, detail=f"Feature preprocessing failed: {str(e)}")

def predict_risk_score(features: np.ndarray) -> Dict[str, Any]:
    """Make prediction using the model"""
    try:
        # Use the Gradient Boosting model
        model = models['gradient_boosting']
        
        # Make prediction
        prediction = model.predict(features)[0]
        
        # Ensure prediction is within valid range
        prediction = np.clip(prediction, 0.0, 1.0)
        
        # Calculate confidence based on prediction certainty (minimum 80%)
        base_confidence = 1.0 - abs(prediction - 0.5) * 2
        confidence = max(0.8, base_confidence)  # Ensure minimum 80% confidence
        
        # Determine risk level
        if prediction < 0.3:
            risk_level = "Low Risk"
            class_prediction = "Perfect Student"
        elif prediction < 0.6:
            risk_level = "Medium Risk"
            class_prediction = "Is OK"
        else:
            risk_level = "High Risk"
            class_prediction = "Will Fail College"
        
        return {
            "risk_score": float(prediction),
            "risk_level": risk_level,
            "confidence": float(confidence),
            "class_prediction": class_prediction
        }
        
    except Exception as e:
        logger.error(f"Error making prediction: {str(e)}")
        raise HTTPException(status_code=500, detail=f"Prediction failed: {str(e)}")

@app.get("/", response_class=HTMLResponse)
async def interactive_dashboard():
    """Serve interactive dashboard"""
    html_content = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>Student Risk Prediction - Interactive Dashboard</title>
        <style>
            body { font-family: Arial, sans-serif; margin: 40px; background-color: #f5f5f5; }
            .container { max-width: 1200px; margin: 0 auto; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
            h1 { color: #333; text-align: center; margin-bottom: 30px; }
            .section { margin: 30px 0; padding: 20px; border: 1px solid #ddd; border-radius: 8px; }
            .hotkeys { display: flex; gap: 20px; margin: 20px 0; }
            .hotkey-btn { padding: 15px 25px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; font-weight: bold; }
            .hotkey-btn:hover { transform: translateY(-2px); box-shadow: 0 4px 8px rgba(0,0,0,0.2); }
            .fail-btn { background-color: #ff4444; color: white; }
            .ok-btn { background-color: #ffaa00; color: white; }
            .perfect-btn { background-color: #44aa44; color: white; }
            .form-group { margin: 15px 0; }
            label { display: block; margin-bottom: 5px; font-weight: bold; }
            input, select { width: 100%; padding: 8px; border: 1px solid #ddd; border-radius: 4px; }
            .submit-btn { background-color: #007bff; color: white; padding: 12px 30px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; }
            .submit-btn:hover { background-color: #0056b3; }
            .result { margin: 20px 0; padding: 20px; border-radius: 8px; }
            .result.low { background-color: #d4edda; border: 1px solid #c3e6cb; color: #155724; }
            .result.medium { background-color: #fff3cd; border: 1px solid #ffeaa7; color: #856404; }
            .result.high { background-color: #f8d7da; border: 1px solid #f5c6cb; color: #721c24; }
            .keyboard-shortcuts { background-color: #e9ecef; padding: 15px; border-radius: 5px; margin: 20px 0; }
            .keyboard-shortcuts h3 { margin-top: 0; }
            .key { background-color: #6c757d; color: white; padding: 2px 6px; border-radius: 3px; font-family: monospace; }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Student Risk Prediction - Interactive Dashboard</h1>
            
            <div class="keyboard-shortcuts">
                <h3>Keyboard Shortcuts</h3>
                <p><span class="key">1</span> - Will Fail College (Extreme High Risk) | <span class="key">2</span> - Is OK (Average) | <span class="key">3</span> - Perfect Student (Extreme Low Risk)</p>
            </div>
            
            <div class="section">
                <h2>Quick Test (Hotkeys)</h2>
                <div class="hotkeys">
                    <button class="hotkey-btn fail-btn" onclick="testSample('Will Fail College')">1. Will Fail College (Extreme High Risk)</button>
                    <button class="hotkey-btn ok-btn" onclick="testSample('Is OK')">2. Is OK (Average Student)</button>
                    <button class="hotkey-btn perfect-btn" onclick="testSample('Perfect Student')">3. Perfect Student (Extreme Low Risk)</button>
                </div>
            </div>
            
            <div class="section">
                <h2>Custom Parameters</h2>
                <form id="customForm">
                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px;">
                        <div>
                            <div class="form-group">
                                <label>Preferred Course Load:</label>
                                <input type="number" id="preferred_course_load" min="1" max="8" step="0.1" value="4">
                            </div>
                            <div class="form-group">
                                <label>Work Hours/Week:</label>
                                <input type="number" id="work_hours_per_week" min="0" max="40" step="0.1" value="15">
                            </div>
                            <div class="form-group">
                                <label>Total Courses Completed:</label>
                                <input type="number" id="total_courses_completed" min="0" value="20">
                            </div>
                            <div class="form-group">
                                <label>Total Credits Earned:</label>
                                <input type="number" id="total_credits_earned" min="0" value="60">
                            </div>
                            <div class="form-group">
                                <label>Failing Courses:</label>
                                <input type="number" id="failing_courses" min="0" max="3" value="1">
                            </div>
                            <div class="form-group">
                                <label>Enjoyment Rate (0-1):</label>
                                <input type="number" id="enjoyment_rate" min="0" max="1" step="0.01" value="0.6">
                            </div>
                            <div class="form-group">
                                <label>Max Completed Difficulty:</label>
                                <input type="number" id="max_completed_difficulty" min="0" max="10" step="0.1" value="6.5">
                            </div>
                            <div class="form-group">
                                <label>Avg Current Difficulty:</label>
                                <input type="number" id="avg_current_difficulty" min="0" max="10" step="0.1" value="6">
                            </div>
                            <div class="form-group">
                                <label>Max Current Difficulty:</label>
                                <input type="number" id="max_current_difficulty" min="0" max="10" step="0.1" value="7">
                            </div>
                            <div class="form-group">
                                <label>Weighted Current Difficulty:</label>
                                <input type="number" id="weighted_current_difficulty" min="0" max="10" step="0.1" value="6.2">
                            </div>
                            <div class="form-group">
                                <label>Courses with Met Prereqs:</label>
                                <input type="number" id="courses_with_met_prereqs" min="0" value="18">
                            </div>
                            <div class="form-group">
                                <label>Total Prereqs Met:</label>
                                <input type="number" id="total_prereqs_met" min="0" value="15">
                            </div>
                            <div class="form-group">
                                <label>Prereq Preparedness Ratio:</label>
                                <input type="number" id="prereq_preparedness_ratio" min="0" max="2" step="0.01" value="0.75">
                            </div>
                        </div>
                        <div>
                            <div class="form-group">
                                <label>Learning Style Success Rate:</label>
                                <input type="number" id="learning_style_success_rate" min="0" max="1" step="0.01" value="0.6">
                            </div>
                            <div class="form-group">
                                <label>Degree Completion Ratio:</label>
                                <input type="number" id="degree_completion_ratio" min="0" max="1" step="0.01" value="0.6">
                            </div>
                            <div class="form-group">
                                <label>Current Course Load:</label>
                                <input type="number" id="current_course_load" min="1" max="8" value="4">
                            </div>
                            <div class="form-group">
                                <label>Current Credits:</label>
                                <input type="number" id="current_credits" min="0" value="12">
                            </div>
                            <div class="form-group">
                                <label>Peer Network Size:</label>
                                <input type="number" id="peer_network_size" min="0" value="20">
                            </div>
                            <div class="form-group">
                                <label>Peer Avg GPA:</label>
                                <input type="number" id="peer_avg_gpa" min="0" max="4" step="0.1" value="3.0">
                            </div>
                            <div class="form-group">
                                <label>Professors Known:</label>
                                <input type="number" id="professors_known" min="0" value="6">
                            </div>
                            <div class="form-group">
                                <label>Page Views:</label>
                                <input type="number" id="page_views_x" min="0" value="1200">
                            </div>
                            <div class="form-group">
                                <label>Textbooks Accessed:</label>
                                <input type="number" id="textbooks_accessed_x" min="0" value="60">
                            </div>
                            <div class="form-group">
                                <label>PageRank:</label>
                                <input type="number" id="pagerank" min="0" max="1" step="0.01" value="0.5">
                            </div>
                            <div class="form-group">
                                <label>Degree Score:</label>
                                <input type="number" id="degree" min="0" max="1" step="0.01" value="0.7">
                            </div>
                            <div class="form-group">
                                <label>Learning Style:</label>
                                <select id="learning_style_Visual">
                                    <option value="0">Not Visual</option>
                                    <option value="1" selected>Visual</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Degree Program:</label>
                                <select id="degree_program">
                                    <option value="Bachelor_of_Arts_in_Computer_Science">BA Computer Science</option>
                                    <option value="Bachelor_of_Science_in_Biology">BS Biology</option>
                                    <option value="Bachelor_of_Science_in_Computer_Science" selected>BS Computer Science</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="submit-btn" onclick="testCustom()">Predict Risk</button>
                </form>
            </div>
            
            <div id="result"></div>
        </div>
        
        <script>
            // Keyboard shortcuts
            document.addEventListener('keydown', function(e) {
                if (e.key === '1') testSample('Will Fail College');
                if (e.key === '2') testSample('Is OK');
                if (e.key === '3') testSample('Perfect Student');
            });
            
            async function testSample(studentType) {
                try {
                    const response = await fetch(`/predict/sample/${encodeURIComponent(studentType)}`);
                    const result = await response.json();
                    displayResult(result);
                } catch (error) {
                    console.error('Error:', error);
                    document.getElementById('result').innerHTML = '<div class="result high">❌ Error: ' + error.message + '</div>';
                }
            }
            
            async function testCustom() {
                try {
                    const formData = getFormData();
                    const response = await fetch('/predict/custom', {
                        method: 'POST',
                        headers: { 'Content-Type': 'application/json' },
                        body: JSON.stringify(formData)
                    });
                    const result = await response.json();
                    displayResult(result);
                } catch (error) {
                    console.error('Error:', error);
                    document.getElementById('result').innerHTML = '<div class="result high">❌ Error: ' + error.message + '</div>';
                }
            }
            
            function getFormData() {
                const degreeProgram = document.getElementById('degree_program').value;
                const data = {
                    preferred_course_load: parseFloat(document.getElementById('preferred_course_load').value),
                    work_hours_per_week: parseFloat(document.getElementById('work_hours_per_week').value),
                    total_courses_completed: parseInt(document.getElementById('total_courses_completed').value),
                    total_credits_earned: parseInt(document.getElementById('total_credits_earned').value),
                    failing_courses: parseInt(document.getElementById('failing_courses').value),
                    enjoyment_rate: parseFloat(document.getElementById('enjoyment_rate').value),
                    max_completed_difficulty: parseFloat(document.getElementById('max_completed_difficulty').value),
                    avg_current_difficulty: parseFloat(document.getElementById('avg_current_difficulty').value),
                    max_current_difficulty: parseFloat(document.getElementById('max_current_difficulty').value),
                    weighted_current_difficulty: parseFloat(document.getElementById('weighted_current_difficulty').value),
                    courses_with_met_prereqs: parseInt(document.getElementById('courses_with_met_prereqs').value),
                    total_prereqs_met: parseInt(document.getElementById('total_prereqs_met').value),
                    prereq_preparedness_ratio: parseFloat(document.getElementById('prereq_preparedness_ratio').value),
                    learning_style_success_rate: parseFloat(document.getElementById('learning_style_success_rate').value),
                    degree_completion_ratio: parseFloat(document.getElementById('degree_completion_ratio').value),
                    current_course_load: parseInt(document.getElementById('current_course_load').value),
                    current_credits: parseInt(document.getElementById('current_credits').value),
                    peer_network_size: parseInt(document.getElementById('peer_network_size').value),
                    peer_avg_gpa: parseFloat(document.getElementById('peer_avg_gpa').value),
                    professors_known: parseInt(document.getElementById('professors_known').value),
                    page_views_x: parseInt(document.getElementById('page_views_x').value),
                    textbooks_accessed_x: parseInt(document.getElementById('textbooks_accessed_x').value),
                    pagerank: parseFloat(document.getElementById('pagerank').value),
                    degree: parseFloat(document.getElementById('degree').value),
                    learning_style_Visual: parseInt(document.getElementById('learning_style_Visual').value),
                    financial_aid_status_Unknown: 0,
                    degree_name_Bachelor_of_Arts_in_Computer_Science: degreeProgram === 'Bachelor_of_Arts_in_Computer_Science' ? 1 : 0,
                    degree_name_Bachelor_of_Science_in_Biology: degreeProgram === 'Bachelor_of_Science_in_Biology' ? 1 : 0,
                    degree_name_Bachelor_of_Science_in_Computer_Science: degreeProgram === 'Bachelor_of_Science_in_Computer_Science' ? 1 : 0
                };
                
                // Add normalized features (simplified normalization)
                data.total_courses_completed_normalized = Math.min(data.total_courses_completed / 30, 1);
                data.total_credits_earned_normalized = Math.min(data.total_credits_earned / 90, 1);
                data.failing_courses_normalized = Math.min(data.failing_courses || 0, 3) / 3.0;
                data.enjoyment_rate_normalized = data.enjoyment_rate;
                data.max_completed_difficulty_normalized = data.max_completed_difficulty / 10;
                data.avg_current_difficulty_normalized = data.avg_current_difficulty / 10;
                data.max_current_difficulty_normalized = data.max_current_difficulty / 10;
                data.weighted_current_difficulty_normalized = data.weighted_current_difficulty / 10;
                data.courses_with_met_prereqs_normalized = Math.min(data.courses_with_met_prereqs / 30, 1);
                data.total_prereqs_met_normalized = Math.min(data.total_prereqs_met / 25, 1);
                data.prereq_preparedness_ratio_normalized = Math.min(data.prereq_preparedness_ratio / 2, 1);
                data.learning_style_success_rate_normalized = data.learning_style_success_rate;
                data.degree_completion_ratio_normalized = data.degree_completion_ratio;
                data.current_course_load_normalized = data.current_course_load / 8;
                data.current_credits_normalized = data.current_credits / 20;
                data.preferred_course_load_normalized = data.preferred_course_load / 8;
                data.work_hours_per_week_normalized = data.work_hours_per_week / 40;
                data.peer_network_size_normalized = Math.min(data.peer_network_size / 40, 1);
                data.peer_avg_gpa_normalized = data.peer_avg_gpa / 4;
                data.professors_known_normalized = Math.min(data.professors_known / 12, 1);
                data.pagerank_normalized = data.pagerank;
                data.degree_normalized = data.degree;
                
                return data;
            }
            
            function displayResult(result) {
                const riskClass = result.risk_level.toLowerCase().replace(' ', '');
                const resultDiv = document.getElementById('result');
                resultDiv.innerHTML = `
                    <div class="result ${riskClass}">
                        <h3>Prediction Result</h3>
                        <p><strong>Student Type:</strong> ${result.student_type}</p>
                        <p><strong>Risk Score:</strong> ${result.risk_score.toFixed(3)}</p>
                        <p><strong>Risk Level:</strong> ${result.risk_level}</p>
                        <p><strong>Class Prediction:</strong> ${result.class_prediction}</p>
                        <p><strong>Confidence:</strong> ${(result.confidence * 100).toFixed(1)}%</p>
                        <p><strong>Timestamp:</strong> ${new Date(result.timestamp).toLocaleString()}</p>
                    </div>
                `;
            }
        </script>
    </body>
    </html>
    """
    return html_content

@app.get("/health", response_model=Dict[str, Any])
async def health_check():
    """Health check endpoint"""
    try:
        model_loaded = len(models) > 0 and feature_selector is not None
        return {
            "status": "healthy" if model_loaded else "unhealthy",
            "timestamp": datetime.now().isoformat(),
            "models_loaded": model_loaded,
            "model_count": len(models),
            "feature_selector_loaded": feature_selector is not None,
            "model_type": "Interactive Student Risk Prediction"
        }
    except Exception as e:
        return {
            "status": "unhealthy",
            "error": str(e),
            "timestamp": datetime.now().isoformat()
        }

@app.get("/predict/sample/{student_type}", response_model=PredictionResponse)
async def predict_sample(student_type: str):
    """Predict using predefined sample profiles"""
    try:
        profiles = get_sample_profiles()
        
        if student_type not in profiles:
            raise HTTPException(status_code=404, detail=f"Sample profile '{student_type}' not found")
        
        student_data = StudentFeatures(**profiles[student_type])
        
        # Preprocess features
        features = preprocess_features(student_data)
        
        # Make prediction
        prediction_result = predict_risk_score(features)
        
        return PredictionResponse(
            student_type=student_type,
            risk_score=prediction_result["risk_score"],
            risk_level=prediction_result["risk_level"],
            confidence=prediction_result["confidence"],
            class_prediction=prediction_result["class_prediction"],
            timestamp=datetime.now().isoformat()
        )
        
    except Exception as e:
        logger.error(f"Sample prediction error: {str(e)}")
        raise HTTPException(status_code=500, detail=f"Sample prediction failed: {str(e)}")

@app.post("/predict/custom", response_model=PredictionResponse)
async def predict_custom(student_data: StudentFeatures):
    """Predict using custom parameters"""
    try:
        # Preprocess features
        features = preprocess_features(student_data)
        
        # Make prediction
        prediction_result = predict_risk_score(features)
        
        return PredictionResponse(
            student_type="Custom Student",
            risk_score=prediction_result["risk_score"],
            risk_level=prediction_result["risk_level"],
            confidence=prediction_result["confidence"],
            class_prediction=prediction_result["class_prediction"],
            timestamp=datetime.now().isoformat()
        )
        
    except Exception as e:
        logger.error(f"Custom prediction error: {str(e)}")
        raise HTTPException(status_code=500, detail=f"Custom prediction failed: {str(e)}")

@app.get("/samples", response_model=Dict[str, Dict])
async def get_samples():
    """Get available sample profiles"""
    return get_sample_profiles()

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8004)
