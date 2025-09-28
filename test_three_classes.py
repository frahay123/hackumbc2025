#!/usr/bin/env python3
"""
Test script for three-class student prediction: Will Fail College, Is OK, Perfect Student
"""

import joblib
import pandas as pd
import numpy as np
import requests
import json
from typing import Dict, List, Tuple

def load_model_components():
    """Load the trained model and feature selector"""
    try:
        model = joblib.load('improved_gradient_boosting_model.pkl')
        feature_selector = joblib.load('improved_feature_selector.pkl')
        print("✅ Model components loaded successfully")
        return model, feature_selector
    except Exception as e:
        print(f"❌ Error loading model: {str(e)}")
        return None, None

def create_student_profiles() -> Dict[str, Dict]:
    """Create three distinct student profiles for testing"""
    
    profiles = {
        "Will Fail College": {
            # Poor academic performance indicators
            "preferred_course_load": 6.0,  # Overloaded
            "work_hours_per_week": 35.0,  # Too much work
            "total_courses_completed": 8,  # Very few courses
            "total_credits_earned": 24,    # Low credits
            "enjoyment_rate": 0.2,         # Very low enjoyment
            "max_completed_difficulty": 4.0,  # Low difficulty completed
            "avg_current_difficulty": 9.0,    # Very high current difficulty
            "max_current_difficulty": 10.0,   # Maximum difficulty
            "weighted_current_difficulty": 9.5,  # Extremely high
            "courses_with_met_prereqs": 3,   # Very few met prereqs
            "total_prereqs_met": 2,          # Very few prereqs
            "prereq_preparedness_ratio": 0.3,  # Poor preparation
            "learning_style_success_rate": 0.2,  # Very low success
            "degree_completion_ratio": 0.2,      # Very low completion
            "current_course_load": 6,            # Overloaded
            "current_credits": 18,               # Too many credits
            "peer_network_size": 5,              # Small network
            "peer_avg_gpa": 2.0,                 # Low peer GPA
            "professors_known": 2,               # Few professors
            "page_views_x": 200,                 # Low engagement
            "textbooks_accessed_x": 10,          # Very low textbook use
            "pagerank": 0.1,                     # Low network importance
            "degree": 0.3,                       # Low degree score
            
            # Normalized features (all poor)
            "total_courses_completed_normalized": 0.2,
            "total_credits_earned_normalized": 0.2,
            "failing_courses_normalized": 0.4,
            "enjoyment_rate_normalized": 0.2,
            "max_completed_difficulty_normalized": 0.4,
            "avg_current_difficulty_normalized": 0.9,
            "max_current_difficulty_normalized": 1.0,
            "weighted_current_difficulty_normalized": 0.95,
            "courses_with_met_prereqs_normalized": 0.2,
            "total_prereqs_met_normalized": 0.2,
            "prereq_preparedness_ratio_normalized": 0.3,
            "learning_style_success_rate_normalized": 0.2,
            "degree_completion_ratio_normalized": 0.2,
            "current_course_load_normalized": 0.8,
            "current_credits_normalized": 0.9,
            "preferred_course_load_normalized": 0.8,
            "work_hours_per_week_normalized": 0.875,
            "peer_network_size_normalized": 0.2,
            "peer_avg_gpa_normalized": 0.5,
            "professors_known_normalized": 0.2,
            "pagerank_normalized": 0.1,
            "degree_normalized": 0.3,
            
            # Categorical features
            "learning_style_Visual": 0,
            "financial_aid_status_Unknown": 1,
            "degree_name_Bachelor of Arts in Computer Science": 0,
            "degree_name_Bachelor of Science in Biology": 1,
            "degree_name_Bachelor of Science in Computer Science": 0
        },
        
        "Is OK": {
            # Average academic performance indicators
            "preferred_course_load": 4.0,  # Standard load
            "work_hours_per_week": 15.0,  # Moderate work
            "total_courses_completed": 20, # Average courses
            "total_credits_earned": 60,    # Average credits
            "enjoyment_rate": 0.6,         # Moderate enjoyment
            "max_completed_difficulty": 6.5,  # Moderate difficulty
            "avg_current_difficulty": 6.0,    # Moderate current difficulty
            "max_current_difficulty": 7.0,    # Moderate max difficulty
            "weighted_current_difficulty": 6.2,  # Moderate weighted
            "courses_with_met_prereqs": 18,  # Most prereqs met
            "total_prereqs_met": 15,          # Most prereqs
            "prereq_preparedness_ratio": 0.75,  # Good preparation
            "learning_style_success_rate": 0.6,  # Moderate success
            "degree_completion_ratio": 0.6,      # Moderate completion
            "current_course_load": 4,            # Standard load
            "current_credits": 12,               # Standard credits
            "peer_network_size": 20,             # Average network
            "peer_avg_gpa": 3.0,                 # Average peer GPA
            "professors_known": 6,               # Average professors
            "page_views_x": 1200,                # Moderate engagement
            "textbooks_accessed_x": 60,          # Moderate textbook use
            "pagerank": 0.5,                     # Average network importance
            "degree": 0.7,                       # Good degree score
            
            # Normalized features (all moderate)
            "total_courses_completed_normalized": 0.6,
            "total_credits_earned_normalized": 0.6,
            "failing_courses_normalized": 0.15,
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
            
            # Categorical features
            "learning_style_Visual": 1,
            "financial_aid_status_Unknown": 0,
            "degree_name_Bachelor of Arts in Computer Science": 1,
            "degree_name_Bachelor of Science in Biology": 0,
            "degree_name_Bachelor of Science in Computer Science": 0
        },
        
        "Perfect Student": {
            # Excellent academic performance indicators
            "preferred_course_load": 4.0,  # Optimal load
            "work_hours_per_week": 8.0,   # Minimal work
            "total_courses_completed": 30, # Many courses
            "total_credits_earned": 90,    # High credits
            "enjoyment_rate": 0.95,        # Very high enjoyment
            "max_completed_difficulty": 9.0,  # High difficulty completed
            "avg_current_difficulty": 5.0,    # Low current difficulty (easy for them)
            "max_current_difficulty": 6.0,    # Moderate max difficulty
            "weighted_current_difficulty": 5.2,  # Low weighted (easy for them)
            "courses_with_met_prereqs": 30,  # All prereqs met
            "total_prereqs_met": 25,          # All prereqs
            "prereq_preparedness_ratio": 0.95,  # Excellent preparation
            "learning_style_success_rate": 0.95,  # Excellent success
            "degree_completion_ratio": 0.9,      # High completion
            "current_course_load": 4,            # Optimal load
            "current_credits": 12,               # Optimal credits
            "peer_network_size": 40,             # Large network
            "peer_avg_gpa": 3.8,                 # High peer GPA
            "professors_known": 12,              # Many professors
            "page_views_x": 3000,                # High engagement
            "textbooks_accessed_x": 150,         # High textbook use
            "pagerank": 0.9,                     # High network importance
            "degree": 0.95,                      # Excellent degree score
            
            # Normalized features (all excellent)
            "total_courses_completed_normalized": 0.9,
            "total_credits_earned_normalized": 0.9,
            "failing_courses_normalized": 0.02,
            "enjoyment_rate_normalized": 0.95,
            "max_completed_difficulty_normalized": 0.9,
            "avg_current_difficulty_normalized": 0.5,
            "max_current_difficulty_normalized": 0.6,
            "weighted_current_difficulty_normalized": 0.52,
            "courses_with_met_prereqs_normalized": 0.9,
            "total_prereqs_met_normalized": 0.9,
            "prereq_preparedness_ratio_normalized": 0.95,
            "learning_style_success_rate_normalized": 0.95,
            "degree_completion_ratio_normalized": 0.9,
            "current_course_load_normalized": 0.5,
            "current_credits_normalized": 0.6,
            "preferred_course_load_normalized": 0.5,
            "work_hours_per_week_normalized": 0.2,
            "peer_network_size_normalized": 0.9,
            "peer_avg_gpa_normalized": 0.95,
            "professors_known_normalized": 0.9,
            "pagerank_normalized": 0.9,
            "degree_normalized": 0.95,
            
            # Categorical features
            "learning_style_Visual": 1,
            "financial_aid_status_Unknown": 0,
            "degree_name_Bachelor of Arts in Computer Science": 0,
            "degree_name_Bachelor of Science in Biology": 0,
            "degree_name_Bachelor of Science in Computer Science": 1
        }
    }
    
    return profiles

def predict_with_model(model, feature_selector, student_data: Dict) -> Tuple[float, str]:
    """Make prediction using the loaded model"""
    try:
        # Get selected features
        selected_features = feature_selector.get_feature_names_out()
        
        # Create feature array
        feature_array = np.zeros(len(selected_features))
        
        for i, feature_name in enumerate(selected_features):
            if feature_name in student_data:
                feature_array[i] = student_data[feature_name]
            else:
                # Set default values for missing features
                feature_array[i] = 0.5
        
        # Make prediction
        prediction = model.predict([feature_array])[0]
        prediction = np.clip(prediction, 0.0, 1.0)
        
        # Classify into three classes based on risk score
        if prediction < 0.3:
            class_label = "Perfect Student"
        elif prediction < 0.6:
            class_label = "Is OK"
        else:
            class_label = "Will Fail College"
        
        return prediction, class_label
        
    except Exception as e:
        print(f"❌ Error making prediction: {str(e)}")
        return None, None

def test_api_prediction(student_data: Dict, student_type: str) -> Dict:
    """Test prediction via API (if available)"""
    try:
        # Try to connect to the API
        response = requests.post(
            "http://localhost:8001/predict",
            json=student_data,
            timeout=5
        )
        
        if response.status_code == 200:
            result = response.json()
            return {
                "api_available": True,
                "risk_score": result["risk_score"],
                "risk_level": result["risk_level"],
                "confidence": result["confidence"]
            }
        else:
            return {"api_available": False, "error": f"HTTP {response.status_code}"}
            
    except requests.exceptions.RequestException:
        return {"api_available": False, "error": "API not available"}

def analyze_predictions(predictions: List[Tuple[str, float, str]]) -> None:
    """Analyze and display prediction results"""
    print("\n" + "="*80)
    print("📊 THREE-CLASS PREDICTION ANALYSIS")
    print("="*80)
    
    # Sort by risk score
    predictions.sort(key=lambda x: x[1])
    
    print("🎯 Prediction Results (sorted by risk score):")
    print("-" * 60)
    
    for student_type, risk_score, predicted_class in predictions:
        print(f"📚 {student_type:<20} | Risk: {risk_score:.3f} | Predicted: {predicted_class}")
    
    # Calculate differentiation metrics
    scores = [p[1] for p in predictions]
    score_range = max(scores) - min(scores)
    
    print(f"\n📈 Differentiation Analysis:")
    print(f"   Risk Score Range: {score_range:.3f}")
    print(f"   Min Score: {min(scores):.3f}")
    print(f"   Max Score: {max(scores):.3f}")
    print(f"   Average Score: {sum(scores)/len(scores):.3f}")
    
    # Check if predictions make logical sense
    print(f"\n🔍 Logic Check:")
    if len(predictions) == 3:
        will_fail_score = next(p[1] for p in predictions if "Will Fail" in p[0])
        is_ok_score = next(p[1] for p in predictions if "Is OK" in p[0])
        perfect_score = next(p[1] for p in predictions if "Perfect" in p[0])
        
        if will_fail_score > is_ok_score > perfect_score:
            print("   ✅ PREDICTIONS ARE LOGICALLY CORRECT!")
            print("   ✅ Will Fail College has highest risk")
            print("   ✅ Perfect Student has lowest risk")
        else:
            print("   ❌ PREDICTIONS ARE NOT LOGICALLY CORRECT!")
            print(f"   ❌ Will Fail: {will_fail_score:.3f}, Is OK: {is_ok_score:.3f}, Perfect: {perfect_score:.3f}")
    
    # Evaluate differentiation quality
    if score_range > 0.3:
        print("   ✅ EXCELLENT: Great score differentiation (>0.3 range)")
    elif score_range > 0.2:
        print("   ✅ GOOD: Decent score differentiation (>0.2 range)")
    elif score_range > 0.1:
        print("   ⚠️  FAIR: Limited score differentiation (>0.1 range)")
    else:
        print("   ❌ POOR: Very limited score differentiation (<0.1 range)")

def main():
    """Main test function"""
    print("🧪 THREE-CLASS STUDENT PREDICTION TEST")
    print("="*80)
    print("Testing: Will Fail College | Is OK | Perfect Student")
    print("="*80)
    
    # Load model components
    model, feature_selector = load_model_components()
    if model is None or feature_selector is None:
        print("❌ Cannot proceed without model components")
        return
    
    # Create student profiles
    profiles = create_student_profiles()
    
    print(f"\n🎯 Testing {len(profiles)} Student Profiles:")
    print("-" * 50)
    
    predictions = []
    
    for student_type, student_data in profiles.items():
        print(f"\n📚 Testing {student_type}...")
        
        # Make prediction with model
        risk_score, predicted_class = predict_with_model(model, feature_selector, student_data)
        
        if risk_score is not None:
            predictions.append((student_type, risk_score, predicted_class))
            print(f"   Risk Score: {risk_score:.3f}")
            print(f"   Predicted Class: {predicted_class}")
            
            # Test API if available
            api_result = test_api_prediction(student_data, student_type)
            if api_result["api_available"]:
                print(f"   API Risk Score: {api_result['risk_score']:.3f}")
                print(f"   API Risk Level: {api_result['risk_level']}")
            else:
                print(f"   API: Not available ({api_result.get('error', 'Unknown error')})")
        else:
            print(f"   ❌ Prediction failed")
    
    # Analyze results
    if predictions:
        analyze_predictions(predictions)
        
        print(f"\n🎉 Three-class prediction test completed!")
        print(f"📊 Successfully predicted {len(predictions)} student types")
    else:
        print(f"\n❌ No successful predictions made")

if __name__ == "__main__":
    main()
