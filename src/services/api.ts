import { StudentFeatures, PredictionResponse, SampleProfiles } from '@/types/student';

const API_BASE_URL = 'http://localhost:8004';

export class StudentRiskAPI {
  static async healthCheck() {
    const response = await fetch(`${API_BASE_URL}/health`);
    if (!response.ok) {
      throw new Error('Health check failed');
    }
    return response.json();
  }

  static async predictSample(studentType: string): Promise<PredictionResponse> {
    const response = await fetch(`${API_BASE_URL}/predict/sample/${encodeURIComponent(studentType)}`);
    if (!response.ok) {
      throw new Error(`Sample prediction failed: ${response.statusText}`);
    }
    return response.json();
  }

  static async predictCustom(studentData: StudentFeatures): Promise<PredictionResponse> {
    const response = await fetch(`${API_BASE_URL}/predict/custom`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(studentData),
    });
    if (!response.ok) {
      throw new Error(`Custom prediction failed: ${response.statusText}`);
    }
    return response.json();
  }

  static async getSamples(): Promise<SampleProfiles> {
    const response = await fetch(`${API_BASE_URL}/samples`);
    if (!response.ok) {
      throw new Error('Failed to fetch samples');
    }
    return response.json();
  }
}

// Helper function to auto-calculate normalized fields
export function calculateNormalizedFields(data: Partial<StudentFeatures>): StudentFeatures {
  return {
    ...data,
    total_courses_completed_normalized: Math.min((data.total_courses_completed || 0) / 30, 1),
    total_credits_earned_normalized: Math.min((data.total_credits_earned || 0) / 90, 1),
    failing_courses_normalized: Math.min((data.failing_courses || 0), 3) / 3.0,
    enjoyment_rate_normalized: data.enjoyment_rate || 0,
    max_completed_difficulty_normalized: (data.max_completed_difficulty || 0) / 10,
    avg_current_difficulty_normalized: (data.avg_current_difficulty || 0) / 10,
    max_current_difficulty_normalized: (data.max_current_difficulty || 0) / 10,
    weighted_current_difficulty_normalized: (data.weighted_current_difficulty || 0) / 10,
    courses_with_met_prereqs_normalized: Math.min((data.courses_with_met_prereqs || 0) / 30, 1),
    total_prereqs_met_normalized: Math.min((data.total_prereqs_met || 0) / 25, 1),
    prereq_preparedness_ratio_normalized: Math.min((data.prereq_preparedness_ratio || 0) / 2, 1),
    learning_style_success_rate_normalized: data.learning_style_success_rate || 0,
    degree_completion_ratio_normalized: data.degree_completion_ratio || 0,
    current_course_load_normalized: (data.current_course_load || 0) / 8,
    current_credits_normalized: (data.current_credits || 0) / 20,
    preferred_course_load_normalized: (data.preferred_course_load || 0) / 8,
    work_hours_per_week_normalized: (data.work_hours_per_week || 0) / 40,
    peer_network_size_normalized: Math.min((data.peer_network_size || 0) / 40, 1),
    peer_avg_gpa_normalized: (data.peer_avg_gpa || 0) / 4,
    professors_known_normalized: Math.min((data.professors_known || 0) / 12, 1),
    pagerank_normalized: data.pagerank || 0,
    degree_normalized: data.degree || 0,
  } as StudentFeatures;
}