import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { StudentRiskAPI, calculateNormalizedFields } from "@/services/api";
import { PredictionResponse, StudentFeatures } from "@/types/student";
import { useToast } from "@/hooks/use-toast";
import { Loader2, User } from "lucide-react";
import { useState } from "react";

interface StudentFormProps {
  onPrediction: (prediction: PredictionResponse) => void;
}

export function StudentForm({ onPrediction }: StudentFormProps) {
  const [loading, setLoading] = useState(false);
  const { toast } = useToast();
  
  const [formData, setFormData] = useState({
    preferred_course_load: 4,
    work_hours_per_week: 15,
    total_courses_completed: 20,
    total_credits_earned: 60,
    failing_courses: 1,
    enjoyment_rate: 0.6,
    max_completed_difficulty: 6.5,
    avg_current_difficulty: 6,
    max_current_difficulty: 7,
    weighted_current_difficulty: 6.2,
    courses_with_met_prereqs: 18,
    total_prereqs_met: 15,
    prereq_preparedness_ratio: 0.75,
    learning_style_success_rate: 0.6,
    degree_completion_ratio: 0.6,
    current_course_load: 4,
    current_credits: 12,
    peer_network_size: 20,
    peer_avg_gpa: 3.0,
    professors_known: 6,
    page_views_x: 1200,
    textbooks_accessed_x: 60,
    pagerank: 0.5,
    degree: 0.7,
    learning_style_Visual: 1,
    financial_aid_status_Unknown: 0,
    degree_program: "Bachelor_of_Science_in_Computer_Science"
  });

  const handleInputChange = (field: string, value: string | number) => {
    setFormData(prev => ({
      ...prev,
      [field]: typeof value === 'string' ? parseFloat(value) || 0 : value
    }));
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    
    try {
      // Create the full student features object
      const studentFeatures: Partial<StudentFeatures> = {
        ...formData,
        degree_name_Bachelor_of_Arts_in_Computer_Science: formData.degree_program === 'Bachelor_of_Arts_in_Computer_Science' ? 1 : 0,
        degree_name_Bachelor_of_Science_in_Biology: formData.degree_program === 'Bachelor_of_Science_in_Biology' ? 1 : 0,
        degree_name_Bachelor_of_Science_in_Computer_Science: formData.degree_program === 'Bachelor_of_Science_in_Computer_Science' ? 1 : 0,
      };

      // Calculate normalized fields
      const fullFeatures = calculateNormalizedFields(studentFeatures);
      
      const prediction = await StudentRiskAPI.predictCustom(fullFeatures);
      onPrediction(prediction);
      toast({
        title: "Prediction Complete",
        description: "Custom student profile analyzed successfully",
      });
    } catch (error) {
      toast({
        title: "Prediction Failed",
        description: error instanceof Error ? error.message : "Unknown error occurred",
        variant: "destructive",
      });
    } finally {
      setLoading(false);
    }
  };

  return (
    <Card className="border-border bg-card">
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <User className="w-5 h-5" />
          Custom Student Profile
        </CardTitle>
      </CardHeader>
      <CardContent>
        <form onSubmit={handleSubmit} className="space-y-6">
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {/* Academic Performance */}
            <div className="space-y-4">
              <h4 className="font-medium text-sm text-muted-foreground">Academic Performance</h4>
              
              <div className="space-y-2">
                <Label htmlFor="total_courses_completed">Courses Completed</Label>
                <Input
                  id="total_courses_completed"
                  type="number"
                  min="0"
                  value={formData.total_courses_completed}
                  onChange={(e) => handleInputChange('total_courses_completed', e.target.value)}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="total_credits_earned">Credits Earned</Label>
                <Input
                  id="total_credits_earned"
                  type="number"
                  min="0"
                  value={formData.total_credits_earned}
                  onChange={(e) => handleInputChange('total_credits_earned', e.target.value)}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="failing_courses">Failing Courses</Label>
                <Input
                  id="failing_courses"
                  type="number"
                  min="0"
                  max="3"
                  value={formData.failing_courses}
                  onChange={(e) => handleInputChange('failing_courses', e.target.value)}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="enjoyment_rate">Enjoyment Rate (0-1)</Label>
                <Input
                  id="enjoyment_rate"
                  type="number"
                  min="0"
                  max="1"
                  step="0.01"
                  value={formData.enjoyment_rate}
                  onChange={(e) => handleInputChange('enjoyment_rate', e.target.value)}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="degree_completion_ratio">Degree Progress (0-1)</Label>
                <Input
                  id="degree_completion_ratio"
                  type="number"
                  min="0"
                  max="1"
                  step="0.01"
                  value={formData.degree_completion_ratio}
                  onChange={(e) => handleInputChange('degree_completion_ratio', e.target.value)}
                />
              </div>
            </div>

            {/* Current Workload */}
            <div className="space-y-4">
              <h4 className="font-medium text-sm text-muted-foreground">Current Workload</h4>
              
              <div className="space-y-2">
                <Label htmlFor="current_course_load">Current Course Load</Label>
                <Input
                  id="current_course_load"
                  type="number"
                  min="1"
                  max="8"
                  value={formData.current_course_load}
                  onChange={(e) => handleInputChange('current_course_load', e.target.value)}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="preferred_course_load">Preferred Course Load</Label>
                <Input
                  id="preferred_course_load"
                  type="number"
                  min="1"
                  max="8"
                  step="0.1"
                  value={formData.preferred_course_load}
                  onChange={(e) => handleInputChange('preferred_course_load', e.target.value)}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="work_hours_per_week">Work Hours/Week</Label>
                <Input
                  id="work_hours_per_week"
                  type="number"
                  min="0"
                  max="40"
                  step="0.1"
                  value={formData.work_hours_per_week}
                  onChange={(e) => handleInputChange('work_hours_per_week', e.target.value)}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="avg_current_difficulty">Avg Course Difficulty (0-10)</Label>
                <Input
                  id="avg_current_difficulty"
                  type="number"
                  min="0"
                  max="10"
                  step="0.1"
                  value={formData.avg_current_difficulty}
                  onChange={(e) => handleInputChange('avg_current_difficulty', e.target.value)}
                />
              </div>
            </div>

            {/* Social & Resources */}
            <div className="space-y-4">
              <h4 className="font-medium text-sm text-muted-foreground">Social & Resources</h4>
              
              <div className="space-y-2">
                <Label htmlFor="peer_network_size">Peer Network Size</Label>
                <Input
                  id="peer_network_size"
                  type="number"
                  min="0"
                  value={formData.peer_network_size}
                  onChange={(e) => handleInputChange('peer_network_size', e.target.value)}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="peer_avg_gpa">Peer Avg GPA</Label>
                <Input
                  id="peer_avg_gpa"
                  type="number"
                  min="0"
                  max="4"
                  step="0.1"
                  value={formData.peer_avg_gpa}
                  onChange={(e) => handleInputChange('peer_avg_gpa', e.target.value)}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="professors_known">Professors Known</Label>
                <Input
                  id="professors_known"
                  type="number"
                  min="0"
                  value={formData.professors_known}
                  onChange={(e) => handleInputChange('professors_known', e.target.value)}
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="learning_style_Visual">Learning Style</Label>
                <Select value={formData.learning_style_Visual.toString()} onValueChange={(value) => handleInputChange('learning_style_Visual', parseInt(value))}>
                  <SelectTrigger>
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="0">Not Visual</SelectItem>
                    <SelectItem value="1">Visual</SelectItem>
                  </SelectContent>
                </Select>
              </div>

              <div className="space-y-2">
                <Label htmlFor="degree_program">Degree Program</Label>
                <Select value={formData.degree_program} onValueChange={(value) => handleInputChange('degree_program', value)}>
                  <SelectTrigger>
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="Bachelor_of_Arts_in_Computer_Science">BA Computer Science</SelectItem>
                    <SelectItem value="Bachelor_of_Science_in_Biology">BS Biology</SelectItem>
                    <SelectItem value="Bachelor_of_Science_in_Computer_Science">BS Computer Science</SelectItem>
                  </SelectContent>
                </Select>
              </div>
            </div>
          </div>

          <Button type="submit" disabled={loading} className="w-full">
            {loading ? (
              <>
                <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                Analyzing...
              </>
            ) : (
              "🔮 Predict Risk"
            )}
          </Button>
        </form>
      </CardContent>
    </Card>
  );
}