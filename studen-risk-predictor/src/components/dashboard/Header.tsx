import { Card, CardContent } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { StudentRiskAPI } from "@/services/api";
import { useState, useEffect } from "react";
import { Wifi, WifiOff, RefreshCw } from "lucide-react";

export function Header() {
  const [isConnected, setIsConnected] = useState(false);
  const [checking, setChecking] = useState(false);

  const checkConnection = async () => {
    setChecking(true);
    try {
      await StudentRiskAPI.healthCheck();
      setIsConnected(true);
    } catch (error) {
      setIsConnected(false);
    } finally {
      setChecking(false);
    }
  };

  useEffect(() => {
    checkConnection();
  }, []);

  return (
    <Card className="border-border bg-card">
      <CardContent className="pt-6">
        <div className="flex flex-col md:flex-row items-center justify-between gap-4">
          <div className="text-center md:text-left">
            <h1 className="text-3xl font-bold bg-gradient-to-r from-primary to-chart-2 bg-clip-text text-transparent">
              🎓 Student Risk Prediction
            </h1>
            <p className="text-muted-foreground mt-2">
              AI-powered student success analytics with interactive visualization
            </p>
          </div>
          
          <div className="flex items-center gap-3">
            <Badge 
              variant={isConnected ? "default" : "destructive"}
              className="flex items-center gap-2"
            >
              {isConnected ? <Wifi className="w-3 h-3" /> : <WifiOff className="w-3 h-3" />}
              {isConnected ? "API Connected" : "API Disconnected"}
            </Badge>
            
            <Button
              variant="outline"
              size="sm"
              onClick={checkConnection}
              disabled={checking}
            >
              {checking ? (
                <RefreshCw className="w-4 h-4 animate-spin" />
              ) : (
                <RefreshCw className="w-4 h-4" />
              )}
            </Button>
          </div>
        </div>
        
        {!isConnected && (
          <div className="mt-4 p-3 bg-destructive/10 border border-destructive/20 rounded-lg">
            <p className="text-sm text-destructive">
              ⚠️ Unable to connect to the prediction API. Make sure the FastAPI server is running on localhost:8004
            </p>
          </div>
        )}
      </CardContent>
    </Card>
  );
}