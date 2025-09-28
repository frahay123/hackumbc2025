export interface StudentFeatures {
  preferred_course_load: number;
  work_hours_per_week: number;
  total_courses_completed: number;
  total_credits_earned: number;
  failing_courses: number;
  enjoyment_rate: number;
  max_completed_difficulty: number;
  avg_current_difficulty: number;
  max_current_difficulty: number;
  weighted_current_difficulty: number;
  courses_with_met_prereqs: number;
  total_prereqs_met: number;
  prereq_preparedness_ratio: number;
  learning_style_success_rate: number;
  degree_completion_ratio: number;
  current_course_load: number;
  current_credits: number;
  peer_network_size: number;
  peer_avg_gpa: number;
  professors_known: number;
  page_views_x: number;
  textbooks_accessed_x: number;
  pagerank: number;
  degree: number;
  
  // Normalized features
  total_courses_completed_normalized: number;
  total_credits_earned_normalized: number;
  failing_courses_normalized: number;
  enjoyment_rate_normalized: number;
  max_completed_difficulty_normalized: number;
  avg_current_difficulty_normalized: number;
  max_current_difficulty_normalized: number;
  weighted_current_difficulty_normalized: number;
  courses_with_met_prereqs_normalized: number;
  total_prereqs_met_normalized: number;
  prereq_preparedness_ratio_normalized: number;
  learning_style_success_rate_normalized: number;
  degree_completion_ratio_normalized: number;
  current_course_load_normalized: number;
  current_credits_normalized: number;
  preferred_course_load_normalized: number;
  work_hours_per_week_normalized: number;
  peer_network_size_normalized: number;
  peer_avg_gpa_normalized: number;
  professors_known_normalized: number;
  pagerank_normalized: number;
  degree_normalized: number;
  
  // Categorical features
  learning_style_Visual: number;
  financial_aid_status_Unknown: number;
  degree_name_Bachelor_of_Arts_in_Computer_Science: number;
  degree_name_Bachelor_of_Science_in_Biology: number;
  degree_name_Bachelor_of_Science_in_Computer_Science: number;
}

export interface PredictionResponse {
  student_type: string;
  risk_score: number;
  risk_level: string;
  confidence: number;
  class_prediction: string;
  timestamp: string;
}

export interface SampleProfiles {
  [key: string]: StudentFeatures;
}

export type RiskLevel = "Low Risk" | "Medium Risk" | "High Risk";
export type StudentType = "Will Fail College" | "Is OK" | "Perfect Student";