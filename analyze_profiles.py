#!/usr/bin/env python3
"""
Analyze the differences between student profiles to understand why 
"Is OK" and "Perfect Student" have similar risk scores.
"""

import pandas as pd
import numpy as np

def analyze_profiles():
    """Compare the three student profiles"""
    
    # Define the profiles from the API
    profiles = {
        "Will Fail College": {
            "preferred_course_load": 6.0,
            "work_hours_per_week": 35.0,
            "total_courses_completed": 8,
            "total_credits_earned": 24,
            "enjoyment_rate": 0.2,
            "max_completed_difficulty": 4.0,
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
        },
        
        "Perfect Student": {
            "preferred_course_load": 4.0,
            "work_hours_per_week": 8.0,
            "total_courses_completed": 30,
            "total_credits_earned": 90,
            "enjoyment_rate": 0.95,
            "max_completed_difficulty": 9.0,
            "avg_current_difficulty": 5.0,
            "max_current_difficulty": 6.0,
            "weighted_current_difficulty": 5.2,
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
    
    # Convert to DataFrame for easier analysis
    df = pd.DataFrame(profiles).T
    
    print("🔍 STUDENT PROFILE ANALYSIS")
    print("=" * 80)
    
    # Key risk indicators (higher values = higher risk)
    risk_indicators = [
        'work_hours_per_week',
        'avg_current_difficulty', 
        'max_current_difficulty',
        'weighted_current_difficulty',
        'current_course_load',
        'current_credits'
    ]
    
    # Key success indicators (higher values = lower risk)
    success_indicators = [
        'total_courses_completed',
        'total_credits_earned',
        'enjoyment_rate',
        'courses_with_met_prereqs',
        'total_prereqs_met',
        'prereq_preparedness_ratio',
        'learning_style_success_rate',
        'degree_completion_ratio',
        'peer_network_size',
        'peer_avg_gpa',
        'professors_known',
        'page_views_x',
        'textbooks_accessed_x',
        'pagerank',
        'degree'
    ]
    
    print("\n📊 RISK INDICATORS (Higher = More Risk)")
    print("-" * 50)
    for indicator in risk_indicators:
        if indicator in df.columns:
            values = df[indicator]
            print(f"{indicator:25} | {values['Will Fail College']:6.1f} | {values['Is OK']:6.1f} | {values['Perfect Student']:6.1f}")
    
    print("\n📈 SUCCESS INDICATORS (Higher = Less Risk)")
    print("-" * 50)
    for indicator in success_indicators:
        if indicator in df.columns:
            values = df[indicator]
            print(f"{indicator:25} | {values['Will Fail College']:6.1f} | {values['Is OK']:6.1f} | {values['Perfect Student']:6.1f}")
    
    print("\n🤔 POTENTIAL ISSUES:")
    print("-" * 50)
    
    # Check for counterintuitive values
    issues = []
    
    # Perfect Student has very high max_completed_difficulty (9.0) - this might be confusing
    if df.loc['Perfect Student', 'max_completed_difficulty'] > df.loc['Is OK', 'max_completed_difficulty']:
        issues.append("Perfect Student has HIGHER max_completed_difficulty than Is OK (9.0 vs 6.5)")
    
    # Perfect Student has lower avg_current_difficulty - this is good
    if df.loc['Perfect Student', 'avg_current_difficulty'] < df.loc['Is OK', 'avg_current_difficulty']:
        print("✅ Perfect Student has LOWER avg_current_difficulty (5.0 vs 6.0) - this is good")
    
    # Check work hours
    if df.loc['Perfect Student', 'work_hours_per_week'] < df.loc['Is OK', 'work_hours_per_week']:
        print("✅ Perfect Student has LOWER work_hours_per_week (8.0 vs 15.0) - this is good")
    
    for issue in issues:
        print(f"⚠️  {issue}")
    
    print("\n💡 ANALYSIS:")
    print("-" * 50)
    print("The 'Perfect Student' profile has some mixed signals:")
    print("• Very high max_completed_difficulty (9.0) - suggests they've taken very hard courses")
    print("• But low avg_current_difficulty (5.0) - suggests current courses are easy")
    print("• This might confuse the model about their actual risk level")
    print("\nThe model might be interpreting the high max_completed_difficulty as a risk factor,")
    print("even though it should indicate success (they completed very difficult courses).")
    
    print("\n🔧 SUGGESTED FIX:")
    print("-" * 50)
    print("For 'Perfect Student', consider:")
    print("• Lower max_completed_difficulty to something more reasonable (7.0-8.0)")
    print("• Keep avg_current_difficulty low (4.0-5.0) to show they find current courses easy")
    print("• This would create clearer differentiation from 'Is OK' student")

if __name__ == "__main__":
    analyze_profiles()
