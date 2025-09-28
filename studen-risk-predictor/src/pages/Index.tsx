import { useState, useEffect } from "react";
import { Header } from "@/components/dashboard/Header";
import { QuickTest } from "@/components/dashboard/QuickTest";
import { StudentForm } from "@/components/dashboard/StudentForm";
import { RiskMeter } from "@/components/dashboard/RiskMeter";
import { RiskChart } from "@/components/dashboard/RiskChart";
import { PredictionResponse, StudentType } from "@/types/student";
import { StudentRiskAPI } from "@/services/api";

const Index = () => {
  const [predictions, setPredictions] = useState<PredictionResponse[]>([]);
  const [currentPrediction, setCurrentPrediction] = useState<PredictionResponse | null>(null);
  const [preset, setPreset] = useState<Record<string, number | string> | undefined>(undefined);

  const handleNewPrediction = (prediction: PredictionResponse) => {
    setCurrentPrediction(prediction);
    setPredictions(prev => [prediction, ...prev].slice(0, 10)); // Keep last 10 predictions
  };

  // Keyboard shortcuts
  useEffect(() => {
    const handleKeyDown = async (e: KeyboardEvent) => {
      const studentTypes: StudentType[] = ["Perfect Student", "Is OK", "Will Fail College"];
      const key = parseInt(e.key);
      
      if (key >= 1 && key <= 3) {
        try {
          const prediction = await StudentRiskAPI.predictSample(studentTypes[key - 1]);
          handleNewPrediction(prediction);
        } catch (error) {
          console.error('Keyboard shortcut prediction failed:', error);
        }
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, []);

  return (
    <div className="min-h-screen bg-background">
      <div className="container mx-auto px-4 py-6 space-y-6">
        <Header />
        
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          {/* Left Column */}
          <div className="space-y-6">
            <QuickTest onPrediction={handleNewPrediction} onPresetSelected={(f) => setPreset(f)} />
            <RiskMeter prediction={currentPrediction} />
          </div>
          
          {/* Middle Column */}
          <div className="lg:col-span-2 space-y-6">
            <StudentForm onPrediction={handleNewPrediction} preset={preset as any} />
            <RiskChart predictions={predictions} />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Index;
