#!/usr/bin/env python3
"""
Test the new extreme profiles directly
"""

import requests
import json

def test_new_profiles():
    """Test the new extreme profiles"""
    
    BASE_URL = "http://localhost:8004"
    
    print("🔍 TESTING NEW EXTREME PROFILES")
    print("=" * 60)
    
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
                print(f"   Confidence: {result['confidence']:.3f} ({result['confidence']*100:.1f}%)")
                print()
            else:
                print(f"❌ {sample} failed: {response.status_code}")
        except Exception as e:
            print(f"❌ {sample} error: {e}")
    
    print("📊 EXPECTED RESULTS:")
    print("-" * 60)
    print("Will Fail College: ~0.812 (Extreme High Risk)")
    print("Is OK: ~0.319 (Average Student)")
    print("Perfect Student: ~0.271 (Extreme Low Risk)")
    print("All confidence scores should be ≥ 80%")

if __name__ == "__main__":
    test_new_profiles()
