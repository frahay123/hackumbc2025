# Crash or Pass - Machine Learning College Verdict

A machine learning-powered student risk prediction system that analyzes academic profiles to predict college success with 85% accuracy.

## What it does

Crash or Pass is a machine learning-powered student risk prediction system that analyzes academic profiles to predict college success with 85% accuracy. Our web application provides real-time predictions, interactive visualizations, and allows users to test both predefined student profiles and custom academic data to determine if students will pass or crash in college.

## How we built it

We used Neo4j with APOC and GDS plugins to extract graph-based features from the synthetic UMBC dataset, running PageRank, Degree Centrality, and Community Detection algorithms to capture academic network patterns. Our backend combines a Weighted Ensemble model (combining Ridge, Lasso, Random Forest, Gradient Boosting, and XGBoost) with 25+ engineered features in FastAPI, while our React/TypeScript frontend provides real-time predictions and interactive visualizations.

## Features

- **Real-time Risk Prediction**: Get instant risk scores and student classifications
- **Interactive Dashboard**: Visualize risk trends and academic patterns
- **Quick Test Profiles**: Analyze predefined student types (Perfect Student, Is OK, Will Fail College)
- **Custom Student Analysis**: Input detailed academic data for personalized predictions
- **Graph-based Features**: Network analysis using PageRank, Degree Centrality, and Community Detection
- **Ensemble ML Model**: Weighted combination of multiple algorithms for optimal accuracy

## Technical Architecture

### Backend
- **FastAPI**: REST API with Pydantic validation
- **Neo4j**: Graph database with APOC and GDS plugins
- **Machine Learning**: Weighted Ensemble (Ridge, Lasso, Random Forest, Gradient Boosting, XGBoost)
- **Feature Engineering**: 25+ academic, social, and behavioral features

### Frontend
- **React/TypeScript**: Modern web application
- **Vite**: Fast build tool and development server
- **shadcn/ui**: Component library with Tailwind CSS
- **Recharts**: Interactive data visualization

### Data Pipeline
- **Graph Algorithms**: PageRank, Degree Centrality, Louvain Community Detection
- **Feature Engineering**: Academic performance, course difficulty, social networks
- **Data Preprocessing**: Normalization, feature selection, data leakage prevention

## Model Performance

- **Accuracy**: 85% prediction accuracy
- **Best Model**: Weighted Ensemble (R² = 0.855, RMSE = 0.042)
- **Features**: 64 total features including graph-based network analysis
- **Response Time**: Sub-second prediction response

## Risk Score Calculation

The `enhanced_final_risk_score` is calculated using a weighted combination of 6 key risk factors:

1. **Enhanced Attrition Risk Level** (25% weight) - Overall risk assessment
2. **Failure Rate Percent** (20% weight) - Historical failure rate
3. **Course Load Difficulty Risk** (20% weight) - Course difficulty vs load
4. **Prerequisite Preparedness Ratio** (15% weight) - Prerequisite readiness
5. **Learning Style Success Rate** (10% weight) - Learning style effectiveness
6. **GPA Risk Inverted** (10% weight) - GPA inverted (higher GPA = lower risk)

## Graph Algorithms

### PageRank
Measures how "influential" or "important" a student is in the academic network. Students connected to other well-connected students get higher scores, indicating study group leaders or peer tutors.

### Degree Centrality
Counts how many direct connections a student has in the network. Students with many course completions or peer connections get higher scores, indicating social integration.

### Community Detection (Louvain)
Groups students into "communities" based on network connections. Students with similar course patterns or learning styles get grouped together, identifying academic clusters.

## Installation

### Prerequisites
- Python 3.8+
- Node.js 16+
- Neo4j with APOC and GDS plugins

### Backend Setup
```bash
# Install Python dependencies
pip install -r requirements.txt

# Start Neo4j with APOC and GDS plugins
# Configure Neo4j connection in final_corrected_extractor.py

# Extract features and train model
python final_corrected_extractor.py
python improved_clean_ensemble_model.py

# Start FastAPI server
python fastapi_interactive.py
```

### Frontend Setup
```bash
cd studen-risk-predictor
npm install
npm run dev
```

## Usage

1. **Start the backend**: Run `python fastapi_interactive.py`
2. **Start the frontend**: Run `npm run dev` in the frontend directory
3. **Access the application**: Open http://localhost:5173
4. **Test predictions**: Use Quick Test profiles or input custom student data

## API Endpoints

- `POST /predict` - Predict student risk from custom data
- `GET /predict/sample/{student_type}` - Predict from predefined profiles
- `GET /` - Interactive dashboard

## Data Sources

- **Synthetic UMBC Dataset**: Academic records, course data, student profiles
- **Graph Relationships**: Course prerequisites, student similarities, teaching assignments
- **Network Analysis**: Peer connections, academic communities, influence patterns

## Challenges we ran into

Integrating Neo4j with APOC and GDS plugins required extensive configuration, and balancing graph-based features with traditional ML features while avoiding data leakage was complex.

## Accomplishments that we're proud of

We achieved 85% prediction accuracy, sub-second response times, and successfully integrated advanced graph algorithms (PageRank, Degree Centrality, Community Detection) for comprehensive academic risk assessment.

## What we learned

We learned that Neo4j plugins (APOC and GDS) are incredibly powerful for preprocessing graph data directly in the database, allowing us to compute complex features like PageRank, degree centrality, and community detection without exporting data to Python. The key insight was that doing feature engineering in Cypher queries with APOC functions (like `apoc.coll.avg`, `apoc.coll.stdev`) is much more efficient than post-processing in Python, and GDS algorithms provide network-aware features that traditional tabular ML cannot capture.

## What's next for Crash or Pass

We plan to integrate with real university systems, add intervention recommendations, develop a faculty dashboard, and expand to mobile apps for comprehensive academic success prediction.

## License

This project is part of HackUMBC 2025 Data Science track.

## Contributing

This is a hackathon project. For questions or contributions, please contact the development team.
