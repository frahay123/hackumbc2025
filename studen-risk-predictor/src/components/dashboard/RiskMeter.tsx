import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { PieChart, Pie, Cell, ResponsiveContainer } from "recharts";
import { PredictionResponse } from "@/types/student";

interface RiskMeterProps {
  prediction: PredictionResponse | null;
}

export function RiskMeter({ prediction }: RiskMeterProps) {
  if (!prediction) {
    return (
      <Card className="border-border bg-card">
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            🎯 Risk Assessment
          </CardTitle>
        </CardHeader>
        <CardContent className="flex items-center justify-center h-48">
          <p className="text-muted-foreground">No prediction data</p>
        </CardContent>
      </Card>
    );
  }

  const riskScore = prediction.risk_score;

  // Create data for the pie chart
  const riskData = [
    { name: "Risk", value: riskScore * 100, color: getRiskColor(riskScore) },
    { name: "Safe", value: (1 - riskScore) * 100, color: "hsl(var(--muted))" }
  ];

  // Confidence display removed per requirements

  return (
    <Card className="border-border bg-card">
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          🎯 Risk Assessment
        </CardTitle>
      </CardHeader>
      <CardContent className="space-y-6">
        <div className="flex justify-center">
          <div className="text-center flex flex-col items-center">
            <h4 className="text-sm font-medium mb-2">Risk Score</h4>
            <div className="relative h-32 w-32 mx-auto">
              <ResponsiveContainer width="100%" height="100%">
                <PieChart>
                  <Pie
                    data={riskData}
                    cx="50%"
                    cy="50%"
                    innerRadius={35}
                    outerRadius={60}
                    startAngle={90}
                    endAngle={-270}
                    dataKey="value"
                  >
                    {riskData.map((entry, index) => (
                      <Cell key={`cell-${index}`} fill={entry.color} />
                    ))}
                  </Pie>
                </PieChart>
              </ResponsiveContainer>
              <div className="absolute inset-0 flex items-center justify-center">
                <div className="text-center">
                  <div className="text-lg font-bold">{(riskScore * 100).toFixed(0)}%</div>
                  <div className="text-xs text-muted-foreground">Risk</div>
                </div>
              </div>
            </div>
            <div className={`text-sm font-medium mt-2 text-center ${getRiskTextColor(riskScore)}`}>
              {prediction.risk_level}
            </div>
          </div>
        </div>

        {/* Prediction Details */}
        <div className="space-y-3 pt-4 border-t border-border">
          <div className="flex justify-between items-center">
            <span className="text-sm text-muted-foreground">Student Type:</span>
            <span className="font-medium">{prediction.student_type}</span>
          </div>
          <div className="flex justify-between items-center">
            <span className="text-sm text-muted-foreground">Classification:</span>
            <span className="font-medium">{prediction.class_prediction}</span>
          </div>
          <div className="flex justify-between items-center">
            <span className="text-sm text-muted-foreground">Timestamp:</span>
            <span className="text-xs">{new Date(prediction.timestamp).toLocaleString()}</span>
          </div>
        </div>
      </CardContent>
    </Card>
  );
}

function getRiskColor(riskScore: number): string {
  if (riskScore < 0.3) return "hsl(var(--risk-low))";
  if (riskScore < 0.6) return "hsl(var(--risk-medium))";
  return "hsl(var(--risk-high))";
}

function getRiskTextColor(riskScore: number): string {
  if (riskScore < 0.3) return "text-risk-low";
  if (riskScore < 0.6) return "text-risk-medium";
  return "text-risk-high";
}