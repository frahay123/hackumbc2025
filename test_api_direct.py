#!/usr/bin/env python3
"""
Test the API directly to see what values are being sent
"""

import requests
import json

def test_api_direct():
    """Test API with direct requests"""
    
    BASE_URL = "http://localhost:8004"
    
    print("🔍 DIRECT API TESTING")
    print("=" * 50)
    
    # Test each sample profile
    samples = ["Will Fail College", "Is OK", "Perfect Student"]
    
    for sample in samples:
        try:
            response = requests.get(f"{BASE_URL}/predict/sample/{sample}")
            if response.status_code == 200:
                result = response.json()
                print(f"✅ {sample}:")
                print(f"   Risk Score: {result['risk_score']:.3f}")
                print(f"   Risk Level: {result['risk_level']}")
                print(f"   Class Prediction: {result['class_prediction']}")
            else:
                print(f"❌ {sample} failed: {response.status_code}")
        except Exception as e:
            print(f"❌ {sample} error: {e}")
    
    # Test with a custom profile that should be very different
    print(f"\n🧪 TESTING EXTREME PROFILES:")
    print("-" * 50)
    
    # Very high risk profile
    high_risk_data = {
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
    }
    
    # Very low risk profile
    low_risk_data = {
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
    
    for name, data in [("EXTREME HIGH RISK", high_risk_data), ("EXTREME LOW RISK", low_risk_data)]:
        try:
            response = requests.post(f"{BASE_URL}/predict/custom", json=data)
            if response.status_code == 200:
                result = response.json()
                print(f"✅ {name}:")
                print(f"   Risk Score: {result['risk_score']:.3f}")
                print(f"   Risk Level: {result['risk_level']}")
                print(f"   Class Prediction: {result['class_prediction']}")
            else:
                print(f"❌ {name} failed: {response.status_code}")
                print(f"   Response: {response.text}")
        except Exception as e:
            print(f"❌ {name} error: {e}")

if __name__ == "__main__":
    test_api_direct()
