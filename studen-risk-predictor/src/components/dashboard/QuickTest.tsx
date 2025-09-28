import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { StudentRiskAPI } from "@/services/api";
import { PredictionResponse, StudentType } from "@/types/student";
import { useToast } from "@/hooks/use-toast";
import { GraduationCap, AlertTriangle, Trophy, Loader2 } from "lucide-react";
import { useState } from "react";

interface QuickTestProps {
  onPrediction: (prediction: PredictionResponse) => void;
  onPresetSelected?: (features: Record<string, number | string>) => void;
}

export function QuickTest({ onPrediction, onPresetSelected }: QuickTestProps) {
  const [loading, setLoading] = useState<string | null>(null);
  const { toast } = useToast();

  const studentTypes: { type: StudentType; icon: React.ReactNode; variant: string; description: string }[] = [
    {
      type: "Perfect Student",
      icon: <Trophy className="w-5 h-5" />,
      variant: "perfect",
      description: "High GPA, well-prepared, engaged"
    },
    {
      type: "Is OK",
      icon: <GraduationCap className="w-5 h-5" />,
      variant: "medium",
      description: "Average performance, manageable workload"
    },
    {
      type: "Will Fail College",
      icon: <AlertTriangle className="w-5 h-5" />,
      variant: "warning",
      description: "High risk, struggling with coursework"
    }
  ];

  const handleQuickTest = async (studentType: StudentType) => {
    setLoading(studentType);
    try {
      const prediction = await StudentRiskAPI.predictSample(studentType);
      onPrediction(prediction);
      // Also surface the features that likely triggered this profile into the Custom form
      if (onPresetSelected) {
        const presetMap: Record<StudentType, Record<string, number | string>> = {
          "Perfect Student": {
            total_courses_completed: 40,
            total_credits_earned: 120,
            failing_courses: 0,
            enjoyment_rate: 0.9,
            degree_completion_ratio: 0.95,
            current_course_load: 5,
            preferred_course_load: 5,
            work_hours_per_week: 5,
            avg_current_difficulty: 5,
            peer_network_size: 50,
            peer_avg_gpa: 3.7,
            professors_known: 8,
            learning_style_Visual: 1,
            degree_program: "Bachelor_of_Science_in_Computer_Science",
          },
          "Is OK": {
            total_courses_completed: 20,
            total_credits_earned: 60,
            failing_courses: 1,
            enjoyment_rate: 0.6,
            degree_completion_ratio: 0.6,
            current_course_load: 4,
            preferred_course_load: 4,
            work_hours_per_week: 15,
            avg_current_difficulty: 6,
            peer_network_size: 20,
            peer_avg_gpa: 3.0,
            professors_known: 6,
            learning_style_Visual: 1,
            degree_program: "Bachelor_of_Science_in_Computer_Science",
          },
          "Will Fail College": {
            total_courses_completed: 5,
            total_credits_earned: 15,
            failing_courses: 3,
            enjoyment_rate: 0.2,
            degree_completion_ratio: 0.1,
            current_course_load: 6,
            preferred_course_load: 3,
            work_hours_per_week: 30,
            avg_current_difficulty: 8.5,
            peer_network_size: 5,
            peer_avg_gpa: 2.2,
            professors_known: 1,
            learning_style_Visual: 0,
            degree_program: "Bachelor_of_Science_in_Biology",
          },
        };

        onPresetSelected(presetMap[studentType]);
      }
      toast({
        title: "Prediction Complete",
        description: `${studentType} profile analyzed successfully`,
      });
    } catch (error) {
      toast({
        title: "Prediction Failed",
        description: error instanceof Error ? error.message : "Unknown error occurred",
        variant: "destructive",
      });
    } finally {
      setLoading(null);
    }
  };

  return (
    <Card className="border-border bg-card">
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          🚀 Quick Test Profiles
        </CardTitle>
      </CardHeader>
      <CardContent>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          {studentTypes.map((student) => (
            <div key={student.type} className="space-y-2">
              <Button
                variant={getButtonVariant(student.variant)}
                className="w-full h-auto p-4 flex flex-col items-center gap-2"
                onClick={() => handleQuickTest(student.type)}
                disabled={loading !== null}
              >
                {loading === student.type ? (
                  <Loader2 className="w-5 h-5 animate-spin" />
                ) : (
                  student.icon
                )}
                <span className="font-medium">{student.type}</span>
              </Button>
              <p className="text-xs text-muted-foreground text-center">
                {student.description}
              </p>
            </div>
          ))}
        </div>
        
        {/* Keyboard shortcuts section removed */}
      </CardContent>
    </Card>
  );
}

function getButtonVariant(variant: string): "default" | "secondary" | "destructive" | "outline" {
  switch (variant) {
    case "perfect":
      return "default";
    case "medium":
      return "secondary";
    case "warning":
      return "destructive";
    default:
      return "outline";
  }
}