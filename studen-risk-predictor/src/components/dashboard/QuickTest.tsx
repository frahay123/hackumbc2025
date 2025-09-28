import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { StudentRiskAPI } from "@/services/api";
import { PredictionResponse, StudentType } from "@/types/student";
import { useToast } from "@/hooks/use-toast";
import { GraduationCap, AlertTriangle, Trophy, Loader2 } from "lucide-react";
import { useState } from "react";

interface QuickTestProps {
  onPrediction: (prediction: PredictionResponse) => void;
}

export function QuickTest({ onPrediction }: QuickTestProps) {
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
        
        <div className="mt-6 p-4 bg-muted/50 rounded-lg">
          <h4 className="text-sm font-medium mb-2">⌨️ Keyboard Shortcuts</h4>
          <div className="text-xs text-muted-foreground space-y-1">
            <div><kbd className="px-1 py-0.5 bg-muted rounded text-xs">1</kbd> Perfect Student</div>
            <div><kbd className="px-1 py-0.5 bg-muted rounded text-xs">2</kbd> Is OK</div>
            <div><kbd className="px-1 py-0.5 bg-muted rounded text-xs">3</kbd> Will Fail College</div>
          </div>
        </div>
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