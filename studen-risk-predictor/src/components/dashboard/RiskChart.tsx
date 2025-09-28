import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer, LineChart, Line, Area, AreaChart } from "recharts";
import { PredictionResponse } from "@/types/student";
import { useState } from "react";
import { Button } from "@/components/ui/button";
import { BarChart3, TrendingUp, Target } from "lucide-react";

interface RiskChartProps {
  predictions: PredictionResponse[];
}

export function RiskChart({ predictions }: RiskChartProps) {
  const [chartType, setChartType] = useState<'bar' | 'line' | 'area'>('area');

  if (predictions.length === 0) {
    return (
      <Card className="border-border bg-card">
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            📊 Risk Analysis
          </CardTitle>
        </CardHeader>
        <CardContent className="flex items-center justify-center h-64">
          <p className="text-muted-foreground">No prediction data to display</p>
        </CardContent>
      </Card>
    );
  }

  // Prepare data for charts
  const chartData = predictions.map((pred, index) => ({
    id: index + 1,
    name: pred.student_type,
    riskScore: (pred.risk_score * 100).toFixed(1),
    timestamp: new Date(pred.timestamp).toLocaleTimeString(),
    riskLevel: pred.risk_level,
    classification: pred.class_prediction,
  }));

  // Risk distribution data
  const riskDistribution = [
    {
      level: "Low Risk",
      count: predictions.filter(p => p.risk_score < 0.3).length,
      color: "hsl(var(--risk-low))",
    },
    {
      level: "Medium Risk", 
      count: predictions.filter(p => p.risk_score >= 0.3 && p.risk_score < 0.6).length,
      color: "hsl(var(--risk-medium))",
    },
    {
      level: "High Risk",
      count: predictions.filter(p => p.risk_score >= 0.6).length,
      color: "hsl(var(--risk-high))",
    },
  ];

  const CustomTooltip = ({ active, payload, label }: any) => {
    if (active && payload && payload.length) {
      const data = payload[0].payload;
      return (
        <div className="bg-card border border-border rounded-lg p-3 shadow-lg">
          <p className="font-medium">{data.name}</p>
          <p className="text-sm text-muted-foreground">{data.timestamp}</p>
          <p className="text-sm">
            <span className="text-chart-4">Risk Score:</span> {data.riskScore}%
          </p>
          {/* Confidence removed */}
          <p className="text-sm">
            <span className="text-muted-foreground">Level:</span> {data.riskLevel}
          </p>
        </div>
      );
    }
    return null;
  };

  const renderChart = () => {
    switch (chartType) {
      case 'bar':
        return (
          <BarChart data={chartData}>
            <CartesianGrid strokeDasharray="3 3" stroke="hsl(var(--border))" />
            <XAxis 
              dataKey="name" 
              stroke="hsl(var(--muted-foreground))"
              fontSize={12}
              tick={{ fill: "hsl(var(--muted-foreground))" }}
            />
            <YAxis 
              stroke="hsl(var(--muted-foreground))"
              fontSize={12}
              tick={{ fill: "hsl(var(--muted-foreground))" }}
            />
            <Tooltip content={<CustomTooltip />} />
            <Bar dataKey="riskScore" fill="hsl(var(--chart-4))" radius={[4, 4, 0, 0]} />
          </BarChart>
        );
      case 'line':
        return (
          <LineChart data={chartData}>
            <CartesianGrid strokeDasharray="3 3" stroke="hsl(var(--border))" />
            <XAxis 
              dataKey="name" 
              stroke="hsl(var(--muted-foreground))"
              fontSize={12}
              tick={{ fill: "hsl(var(--muted-foreground))" }}
            />
            <YAxis 
              stroke="hsl(var(--muted-foreground))"
              fontSize={12}
              tick={{ fill: "hsl(var(--muted-foreground))" }}
            />
            <Tooltip content={<CustomTooltip />} />
            <Line 
              type="monotone" 
              dataKey="riskScore" 
              stroke="hsl(var(--chart-4))" 
              strokeWidth={3}
              dot={{ fill: "hsl(var(--chart-4))", strokeWidth: 2, r: 6 }}
            />
            {/* Confidence line removed */}
          </LineChart>
        );
      case 'area':
        return (
          <AreaChart data={chartData}>
            <CartesianGrid strokeDasharray="3 3" stroke="hsl(var(--border))" />
            <XAxis 
              dataKey="name" 
              stroke="hsl(var(--muted-foreground))"
              fontSize={12}
              tick={{ fill: "hsl(var(--muted-foreground))" }}
            />
            <YAxis 
              stroke="hsl(var(--muted-foreground))"
              fontSize={12}
              tick={{ fill: "hsl(var(--muted-foreground))" }}
            />
            <Tooltip content={<CustomTooltip />} />
            <Area 
              type="monotone" 
              dataKey="riskScore" 
              stroke="hsl(var(--chart-4))" 
              fill="hsl(var(--chart-4) / 0.6)"
              strokeWidth={2}
            />
            {/* Confidence area removed */}
          </AreaChart>
        );
    }
  };

  return (
    <div className="space-y-4">
      {/* Risk Trend Chart */}
      <Card className="border-border bg-card">
        <CardHeader>
          <div className="flex items-center justify-between">
            <CardTitle className="flex items-center gap-2">
              📊 Risk Analysis
            </CardTitle>
            <div className="flex gap-2">
              <Button
                variant={chartType === 'area' ? 'default' : 'outline'}
                size="sm"
                onClick={() => setChartType('area')}
              >
                <Target className="w-4 h-4" />
              </Button>
              <Button
                variant={chartType === 'line' ? 'default' : 'outline'}
                size="sm"
                onClick={() => setChartType('line')}
              >
                <TrendingUp className="w-4 h-4" />
              </Button>
              <Button
                variant={chartType === 'bar' ? 'default' : 'outline'}
                size="sm"
                onClick={() => setChartType('bar')}
              >
                <BarChart3 className="w-4 h-4" />
              </Button>
            </div>
          </div>
        </CardHeader>
        <CardContent>
          <div className="h-64">
            <ResponsiveContainer width="100%" height="100%">
              {renderChart()}
            </ResponsiveContainer>
          </div>
          <div className="flex justify-center gap-6 mt-4 text-sm">
            <div className="flex items-center gap-2">
              <div className="w-3 h-3 bg-chart-4 rounded-full"></div>
              <span>Risk Score</span>
            </div>
            {/* Confidence legend removed */}
          </div>
        </CardContent>
      </Card>

      {/* Risk Distribution */}
      <Card className="border-border bg-card">
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            📈 Risk Level Distribution
          </CardTitle>
        </CardHeader>
        <CardContent>
          <div className="h-48">
            <ResponsiveContainer width="100%" height="100%">
              <BarChart data={riskDistribution}>
                <CartesianGrid strokeDasharray="3 3" stroke="hsl(var(--border))" />
                <XAxis 
                  dataKey="level" 
                  stroke="hsl(var(--muted-foreground))"
                  fontSize={12}
                  tick={{ fill: "hsl(var(--muted-foreground))" }}
                />
                <YAxis 
                  stroke="hsl(var(--muted-foreground))"
                  fontSize={12}
                  tick={{ fill: "hsl(var(--muted-foreground))" }}
                />
                <Tooltip 
                  contentStyle={{
                    backgroundColor: "hsl(var(--card))",
                    border: "1px solid hsl(var(--border))",
                    borderRadius: "8px",
                  }}
                />
                <Bar 
                  dataKey="count" 
                  fill="hsl(var(--primary))"
                  radius={[4, 4, 0, 0]}
                />
              </BarChart>
            </ResponsiveContainer>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}