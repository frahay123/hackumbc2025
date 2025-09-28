#!/usr/bin/env python3
"""
Test script for the interactive FastAPI
"""

import requests
import json
import time

# API base URL
BASE_URL = "http://localhost:8004"

def test_health():
    """Test health endpoint"""
    print("🔍 Testing Interactive API Health...")
    try:
        response = requests.get(f"{BASE_URL}/health")
        if response.status_code == 200:
            data = response.json()
            print(f"✅ API Status: {data['status']}")
            print(f"   Models Loaded: {data['models_loaded']}")
            return True
        else:
            print(f"❌ Health check failed: {response.status_code}")
            return False
    except Exception as e:
        print(f"❌ Health check error: {str(e)}")
        return False

def test_sample_predictions():
    """Test sample predictions"""
    print("\n🎯 Testing Sample Predictions...")
    
    samples = ["Will Fail College", "Is OK", "Perfect Student"]
    results = []
    
    for sample in samples:
        try:
            response = requests.get(f"{BASE_URL}/predict/sample/{sample}")
            if response.status_code == 200:
                result = response.json()
                results.append(result)
                print(f"✅ {sample}:")
                print(f"   Risk Score: {result['risk_score']:.3f}")
                print(f"   Risk Level: {result['risk_level']}")
                print(f"   Class Prediction: {result['class_prediction']}")
                print(f"   Confidence: {result['confidence']:.3f}")
            else:
                print(f"❌ {sample} failed: {response.status_code}")
        except Exception as e:
            print(f"❌ {sample} error: {str(e)}")
    
    return results

def test_custom_prediction():
    """Test custom prediction"""
    print("\n🔧 Testing Custom Prediction...")
    
    custom_data = {
        "preferred_course_load": 5.0,
        "work_hours_per_week": 20.0,
        "total_courses_completed": 15,
        "total_credits_earned": 45,
        "enjoyment_rate": 0.7,
        "max_completed_difficulty": 7.0,
        "avg_current_difficulty": 6.5,
        "max_current_difficulty": 8.0,
        "weighted_current_difficulty": 7.2,
        "courses_with_met_prereqs": 12,
        "total_prereqs_met": 10,
        "prereq_preparedness_ratio": 0.8,
        "learning_style_success_rate": 0.7,
        "degree_completion_ratio": 0.5,
        "current_course_load": 5,
        "current_credits": 15,
        "peer_network_size": 15,
        "peer_avg_gpa": 3.2,
        "professors_known": 5,
        "page_views_x": 800,
        "textbooks_accessed_x": 40,
        "pagerank": 0.6,
        "degree": 0.8,
        "total_courses_completed_normalized": 0.5,
        "total_credits_earned_normalized": 0.5,
        "failing_courses_normalized": 0.1,
        "enjoyment_rate_normalized": 0.7,
        "max_completed_difficulty_normalized": 0.7,
        "avg_current_difficulty_normalized": 0.65,
        "max_current_difficulty_normalized": 0.8,
        "weighted_current_difficulty_normalized": 0.72,
        "courses_with_met_prereqs_normalized": 0.4,
        "total_prereqs_met_normalized": 0.4,
        "prereq_preparedness_ratio_normalized": 0.8,
        "learning_style_success_rate_normalized": 0.7,
        "degree_completion_ratio_normalized": 0.5,
        "current_course_load_normalized": 0.625,
        "current_credits_normalized": 0.75,
        "preferred_course_load_normalized": 0.625,
        "work_hours_per_week_normalized": 0.5,
        "peer_network_size_normalized": 0.375,
        "peer_avg_gpa_normalized": 0.8,
        "professors_known_normalized": 0.4,
        "pagerank_normalized": 0.6,
        "degree_normalized": 0.8,
        "learning_style_Visual": 1,
        "financial_aid_status_Unknown": 0,
        "degree_name_Bachelor_of_Arts_in_Computer_Science": 0,
        "degree_name_Bachelor_of_Science_in_Biology": 0,
        "degree_name_Bachelor_of_Science_in_Computer_Science": 1
    }
    
    try:
        response = requests.post(f"{BASE_URL}/predict/custom", json=custom_data)
        if response.status_code == 200:
            result = response.json()
            print(f"✅ Custom Student:")
            print(f"   Risk Score: {result['risk_score']:.3f}")
            print(f"   Risk Level: {result['risk_level']}")
            print(f"   Class Prediction: {result['class_prediction']}")
            print(f"   Confidence: {result['confidence']:.3f}")
            return result
        else:
            print(f"❌ Custom prediction failed: {response.status_code}")
            print(f"   Response: {response.text}")
            return None
    except Exception as e:
        print(f"❌ Custom prediction error: {str(e)}")
        return None

def main():
    """Main test function"""
    print("🧪 Interactive FastAPI Test")
    print("=" * 50)
    
    # Test health
    if not test_health():
        print("❌ API is not healthy, cannot proceed")
        return
    
    # Test sample predictions
    sample_results = test_sample_predictions()
    
    # Test custom prediction
    custom_result = test_custom_prediction()
    
    # Summary
    print("\n" + "=" * 50)
    print("📊 Test Summary")
    print("=" * 50)
    
    if sample_results:
        print(f"✅ Sample predictions: {len(sample_results)}/3 successful")
        
        # Check differentiation
        scores = [r['risk_score'] for r in sample_results]
        score_range = max(scores) - min(scores)
        print(f"📈 Score range: {score_range:.3f}")
        
        if score_range > 0.2:
            print("✅ Good differentiation between student types")
        else:
            print("⚠️ Limited differentiation between student types")
    
    if custom_result:
        print("✅ Custom prediction: Successful")
    
    print(f"\n🌐 Interactive Dashboard: {BASE_URL}")
    print(f"📚 API Documentation: {BASE_URL}/docs")
    print(f"🎯 Available samples: {BASE_URL}/samples")

if __name__ == "__main__":
    main()
