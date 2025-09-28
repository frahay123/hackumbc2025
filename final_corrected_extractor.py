from neo4j import GraphDatabase, exceptions
import pandas as pd
import numpy as np
import time
import os
import json

# --- Connection Details ---
URI = os.getenv("NEO4J_URI", "neo4j://127.0.0.1:7687")
USERNAME = os.getenv("NEO4J_USER", "neo4j")
PASSWORD = os.getenv("NEO4J_PASSWORD", "USAUSA123")


class EnhancedFinalExtractor:
    def __init__(self):
        """Initializes the extractor and connects to the database."""
        self.driver = GraphDatabase.driver(URI, auth=(USERNAME, PASSWORD))

    def close(self):
        """Closes the database connection."""
        self.driver.close()

    def check_plugins(self):
        """Checks if the GDS and APOC plugins are available in the database."""
        print("=== CHECKING PLUGINS ===")
        with self.driver.session() as session:
            try:
                session.run("RETURN apoc.version()").single()
                print("✅ APOC Plugin: Available")
                apoc_available = True
            except exceptions.ClientError:
                print("❌ APOC Plugin: Not available")
                apoc_available = False

            try:
                gds_version = session.run("CALL gds.version()").single()["gdsVersion"]
                print(f"✅ GDS Plugin: Available (Version {gds_version})")
                gds_available = True
            except (exceptions.ClientError, KeyError):
                print("❌ GDS Plugin: Not available or version key has changed.")
                gds_available = False
        return gds_available, apoc_available

    def extract_enhanced_comprehensive_features(self):
        """Extracts comprehensive academic features with ENHANCED course difficulty analysis."""
        print("\n=== EXTRACTING ENHANCED COMPREHENSIVE FEATURES ===")
        start_time = time.time()
        
        # Enhanced query with comprehensive course difficulty analysis
        comprehensive_query = """
        MATCH (s:Student)
        WHERE s.id IS NOT NULL

        // Get comprehensive academic performance
        CALL {
            WITH s
            OPTIONAL MATCH (s)-[c:COMPLETED]->(course:Course)
            WITH s, collect(c.grade) AS grades, collect(course.credits) AS credits,
                 collect(c.enjoyment) AS enjoyments, collect(c.timeSpent) AS time_spent,
                 collect(course.avgDifficulty) AS completed_difficulties
            RETURN
                apoc.coll.avg([g IN grades WHERE g IS NOT NULL |
                    CASE g
                        WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'A-' THEN 3.7
                        WHEN 'B+' THEN 3.3 WHEN 'B' THEN 3.0 WHEN 'B-' THEN 2.7
                        WHEN 'C+' THEN 2.3 WHEN 'C' THEN 2.0 WHEN 'C-' THEN 1.7
                        WHEN 'D' THEN 1.0 WHEN 'F' THEN 0.0 WHEN 'W' THEN 0.0
                        ELSE 0.0
                    END
                ]) AS cumulative_gpa,
                apoc.coll.stdev([g IN grades WHERE g IS NOT NULL |
                    CASE g
                        WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'A-' THEN 3.7
                        WHEN 'B+' THEN 3.3 WHEN 'B' THEN 3.0 WHEN 'B-' THEN 2.7
                        WHEN 'C+' THEN 2.3 WHEN 'C' THEN 2.0 WHEN 'C-' THEN 1.7
                        WHEN 'D' THEN 1.0 WHEN 'F' THEN 0.0 WHEN 'W' THEN 0.0
                        ELSE 0.0
                    END
                ]) AS grade_volatility,
                size(grades) AS total_courses_completed,
                apoc.coll.sum([credit IN credits WHERE credit IS NOT NULL | credit]) AS total_credits_earned,
                size([g IN grades WHERE g IN ['D', 'F', 'W']]) AS failing_courses,
                CASE 
                    WHEN size(grades) > 0 
                    THEN size([g IN grades WHERE g IN ['D', 'F', 'W']]) * 100.0 / size(grades)
                    ELSE 0.0 
                END AS failure_rate_percent,
                apoc.coll.avg([enjoy IN enjoyments WHERE enjoy IS NOT NULL | 
                    CASE WHEN enjoy THEN 1.0 ELSE 0.0 END]) AS enjoyment_rate,
                apoc.coll.avg([time IN time_spent WHERE time IS NOT NULL | time]) AS recent_performance,
                apoc.coll.avg([diff IN completed_difficulties WHERE diff IS NOT NULL | diff]) AS avg_completed_difficulty,
                apoc.coll.max([diff IN completed_difficulties WHERE diff IS NOT NULL | diff]) AS max_completed_difficulty,
                apoc.coll.min([diff IN completed_difficulties WHERE diff IS NOT NULL | diff]) AS min_completed_difficulty
        }

        // Get enhanced current enrollment analysis
        CALL {
            WITH s
            OPTIONAL MATCH (s)-[e:ENROLLED_IN]->(current:Course)
            WITH s, collect(current) AS current_courses, collect(current.credits) AS current_credits_list,
                 collect(current.avgDifficulty) AS current_difficulties
            RETURN 
                size(current_courses) AS current_course_load,
                apoc.coll.sum([credit IN current_credits_list WHERE credit IS NOT NULL | credit]) AS current_credits,
                apoc.coll.avg([diff IN current_difficulties WHERE diff IS NOT NULL | diff]) AS avg_current_difficulty,
                apoc.coll.max([diff IN current_difficulties WHERE diff IS NOT NULL | diff]) AS max_current_difficulty,
                // Weighted difficulty (credits × difficulty)
                apoc.coll.sum([i IN range(0, size(current_courses)-1) | 
                    CASE WHEN current_credits_list[i] IS NOT NULL AND current_difficulties[i] IS NOT NULL
                    THEN current_credits_list[i] * current_difficulties[i]
                    ELSE 0 END
                ]) AS weighted_current_difficulty,
                // Difficulty jump from completed to current
                CASE 
                    WHEN size(current_difficulties) > 0 AND size([diff IN current_difficulties WHERE diff IS NOT NULL]) > 0
                    THEN apoc.coll.avg([diff IN current_difficulties WHERE diff IS NOT NULL | diff]) - 
                         apoc.coll.avg([diff IN [diff IN current_difficulties WHERE diff IS NOT NULL] | diff])
                    ELSE 0.0 
                END AS difficulty_jump
        }

        // Get prerequisite preparedness analysis
        CALL {
            WITH s
            OPTIONAL MATCH (s)-[e:ENROLLED_IN]->(current:Course)-[:PREREQUISITE_FOR]->(prereq:Course)
            OPTIONAL MATCH (s)-[completed:COMPLETED]->(prereq)
            WHERE completed.grade IS NOT NULL AND NOT completed.grade IN ['D', 'F', 'W']
            RETURN 
                count(DISTINCT current) AS courses_with_met_prereqs,
                count(DISTINCT prereq) AS total_prereqs_met,
                CASE 
                    WHEN count(DISTINCT current) > 0 
                    THEN toFloat(count(DISTINCT prereq)) / toFloat(count(DISTINCT current))
                    ELSE 0.0 
                END AS prereq_preparedness_ratio
        }

        // Get learning style success matching
        CALL {
            WITH s
            OPTIONAL MATCH (s)-[e:ENROLLED_IN]->(current:Course)
            WITH s, collect(current) AS current_courses
            RETURN 
                apoc.coll.avg([course IN current_courses |
                    CASE s.learningStyle
                        WHEN 'Visual' THEN COALESCE(course.visualLearnerSuccess, 0.5)
                        WHEN 'Auditory' THEN COALESCE(course.auditoryLearnerSuccess, 0.5)
                        WHEN 'Kinesthetic' THEN COALESCE(course.kinestheticLearnerSuccess, 0.5)
                        WHEN 'Reading-Writing' THEN COALESCE(course.readingLearnerSuccess, 0.5)
                        ELSE 0.5
                    END
                ]) AS learning_style_success_rate
        }

        // Get degree information
        CALL {
            WITH s
            OPTIONAL MATCH (s)-[:PURSUING]->(d:Degree)
            RETURN d.totalCreditsRequired AS degree_credits_required,
                   d.name AS degree_name
        }

        // Get peer network information
        CALL {
            WITH s
            OPTIONAL MATCH (s)-[:SIMILAR_LEARNING_STYLE]-(peer:Student)
            OPTIONAL MATCH (peer)-[peer_comp:COMPLETED]->(peer_course:Course)
            WHERE peer_comp.grade IS NOT NULL
            RETURN count(DISTINCT peer) AS peer_network_size,
                   apoc.coll.avg([grade IN collect(peer_comp.grade) WHERE grade IS NOT NULL |
                       CASE grade
                           WHEN 'A+' THEN 4.0 WHEN 'A' THEN 4.0 WHEN 'A-' THEN 3.7
                           WHEN 'B+' THEN 3.3 WHEN 'B' THEN 3.0 WHEN 'B-' THEN 2.7
                           WHEN 'C+' THEN 2.3 WHEN 'C' THEN 2.0 WHEN 'C-' THEN 1.7
                           WHEN 'D' THEN 1.0 WHEN 'F' THEN 0.0 WHEN 'W' THEN 0.0
                           ELSE 0.0
                       END
                   ]) AS peer_avg_gpa
        }

        // Get professor performance data
        CALL {
            WITH s
            OPTIONAL MATCH (s)-[c:COMPLETED]->(course:Course)<-[:TEACHES]-(f:Faculty)
            WITH s, collect(course.avgDifficulty) AS difficulties, collect(DISTINCT f) AS professors
            RETURN size(professors) AS professors_known,
                   apoc.coll.avg([diff IN difficulties WHERE diff IS NOT NULL | diff]) AS avg_course_difficulty
        }

        WITH s, cumulative_gpa, grade_volatility, total_courses_completed, total_credits_earned,
             failing_courses, failure_rate_percent, enjoyment_rate, recent_performance,
             avg_completed_difficulty, max_completed_difficulty, min_completed_difficulty,
             current_course_load, current_credits, avg_current_difficulty, max_current_difficulty,
             weighted_current_difficulty, difficulty_jump, courses_with_met_prereqs, 
             total_prereqs_met, prereq_preparedness_ratio, learning_style_success_rate,
             degree_credits_required, degree_name, peer_network_size, peer_avg_gpa, 
             professors_known, avg_course_difficulty,

             // Calculate enhanced derived metrics
             CASE 
                 WHEN degree_credits_required > 0 
                 THEN toFloat(total_credits_earned) / toFloat(degree_credits_required)
                 ELSE 0.0 
             END AS degree_completion_ratio,
             
             CASE 
                 WHEN total_courses_completed > 0 
                 THEN toFloat(total_credits_earned) / toFloat(total_courses_completed)
                 ELSE 0.0 
             END AS avg_credits_per_course,

             // Semester difficulty balance (variance in current course difficulties)
             CASE 
                 WHEN current_course_load > 1 
                 THEN apoc.coll.stdev([avg_current_difficulty])
                 ELSE 0.0 
             END AS semester_difficulty_balance,

             // Course load difficulty risk (weighted difficulty vs student capability)
             CASE 
                 WHEN cumulative_gpa > 0 AND weighted_current_difficulty > 0
                 THEN weighted_current_difficulty / (cumulative_gpa * 10.0)  // Normalize by GPA
                 ELSE 0.0 
             END AS course_load_difficulty_risk

        RETURN
            s.id AS student_id,
            s.name AS student_name,
            
            // Student properties
            COALESCE(s.learningStyle, 'Unknown') AS learning_style,
            COALESCE(s.preferredPace, 'Standard') AS preferred_pace,
            COALESCE(s.preferredCourseLoad, 4) AS preferred_course_load,
            COALESCE(s.workHoursPerWeek, 0) AS work_hours_per_week,
            COALESCE(s.financialAidStatus, 'Unknown') AS financial_aid_status,
            
            // Academic Performance
            cumulative_gpa,
            grade_volatility,
            total_courses_completed,
            total_credits_earned,
            failing_courses,
            failure_rate_percent,
            enjoyment_rate,
            recent_performance,
            
            // Enhanced Course Difficulty Analysis
            avg_completed_difficulty,
            max_completed_difficulty,
            min_completed_difficulty,
            avg_current_difficulty,
            max_current_difficulty,
            weighted_current_difficulty,
            difficulty_jump,
            semester_difficulty_balance,
            course_load_difficulty_risk,
            
            // Prerequisite Analysis
            courses_with_met_prereqs,
            total_prereqs_met,
            prereq_preparedness_ratio,
            
            // Learning Style Matching
            learning_style_success_rate,
            
            // Progress Metrics
            degree_completion_ratio,
            avg_credits_per_course,
            current_course_load,
            current_credits,
            
            // Network and Social
            peer_network_size,
            peer_avg_gpa,
            
            // Professor and Course Features
            professors_known,
            avg_course_difficulty,
            
            // Degree Info
            degree_name,
            
            // Additional features from database properties
            COALESCE(s.total_study_time, 0) AS total_study_time,
            COALESCE(s.page_views, 0) AS page_views,
            COALESCE(s.textbooks_accessed, 0) AS textbooks_accessed,
            COALESCE(s.current_course_load, 0) AS current_course_load_from_props,
            COALESCE(s.overall_gpa, 0.0) AS overall_gpa_from_props,
            COALESCE(s.failure_rate, 0.0) AS failure_rate_from_props,
            COALESCE(s.enhanced_risk_level, 'UNKNOWN') AS enhanced_risk_level,
            COALESCE(s.dropout_probability, 0.0) AS dropout_probability,
            COALESCE(s.total_risk_score, 0) AS total_risk_score
        """
        
        with self.driver.session() as session:
            result = session.run(comprehensive_query)
            comprehensive_df = pd.DataFrame([dict(record) for record in result])
        
        elapsed_time = time.time() - start_time
        print(f"✅ Enhanced comprehensive features extracted for {len(comprehensive_df)} students. Time: {elapsed_time:.2f}s")
        return comprehensive_df

    def extract_gds_features(self):
        """
        Extracts graph algorithm features using GDS by running each algorithm
        separately for maximum performance.
        """
        print("\n=== EXTRACTING GDS FEATURES ===")
        start_time = time.time()
        with self.driver.session() as session:
            session.run("CALL gds.graph.drop('student-graph', false)")

            projection_query = """
            CALL gds.graph.project(
                'student-graph',
                ['Student', 'Course'],
                {
                    COMPLETED: { orientation: 'UNDIRECTED' },
                    SIMILAR_LEARNING_STYLE: { orientation: 'UNDIRECTED' }
                }
            ) YIELD nodeCount, relationshipCount
            """
            result = session.run(projection_query).single()
            print(f"✅ GDS projection created: {result['nodeCount']} nodes, {result['relationshipCount']} relationships")

            # --- Run each algorithm separately ---

            # 1. PageRank
            pagerank_query = """
            CALL gds.pageRank.stream('student-graph') YIELD nodeId, score
            WITH gds.util.asNode(nodeId) AS node, score
            WHERE 'Student' IN labels(node)
            RETURN node.id AS student_id, score AS pagerank
            """
            pagerank_df = pd.DataFrame([dict(r) for r in session.run(pagerank_query)])
            print(f"   - Calculated PageRank for {len(pagerank_df)} students.")

            # 2. Degree Centrality
            degree_query = """
            CALL gds.degree.stream('student-graph') YIELD nodeId, score
            WITH gds.util.asNode(nodeId) AS node, score
            WHERE 'Student' IN labels(node)
            RETURN node.id AS student_id, score AS degree
            """
            degree_df = pd.DataFrame([dict(r) for r in session.run(degree_query)])
            print(f"   - Calculated Degree Centrality for {len(degree_df)} students.")

            # 3. Louvain Community Detection
            louvain_query = """
            CALL gds.louvain.stream('student-graph') YIELD nodeId, communityId
            WITH gds.util.asNode(nodeId) AS node, communityId
            WHERE 'Student' IN labels(node)
            RETURN node.id AS student_id, communityId
            """
            louvain_df = pd.DataFrame([dict(r) for r in session.run(louvain_query)])
            print(f"   - Calculated Louvain Communities for {len(louvain_df)} students.")
            
            # --- Merge results in Pandas ---
            gds_df = pagerank_df.merge(degree_df, on='student_id', how='outer')
            gds_df = gds_df.merge(louvain_df, on='student_id', how='outer')

        elapsed_time = time.time() - start_time
        print(f"✅ GDS features extracted for {len(gds_df)} students. Time: {elapsed_time:.2f}s")
        return gds_df

    def extract_textbook_features(self):
        """Extracts textbook engagement features using correct data sources."""
        print("\n=== EXTRACTING TEXTBOOK FEATURES ===")
        start_time = time.time()
        
        # Enhanced textbook query with relationship data
        textbook_query = """
        MATCH (s:Student)
        WHERE s.id IS NOT NULL

        // Get textbook data from student node properties
        WITH s, 
             COALESCE(s.page_views, 0) AS page_views_from_node,
             COALESCE(s.textbooks_accessed, 0) AS textbooks_accessed_from_node,
             COALESCE(s.total_study_time, 0) AS total_study_time_from_node

        // Also get textbook data from relationships
        OPTIONAL MATCH (s)-[i:INTERACTED_WITH]->(t:Textbook)
        WITH s, page_views_from_node, textbooks_accessed_from_node, total_study_time_from_node,
             count(DISTINCT t) AS textbooks_from_relationship,
             sum(COALESCE(i.page_views, 0)) AS page_views_from_relationship

        RETURN 
            s.id AS student_id,
            // Use the maximum of node vs relationship data
            CASE 
                WHEN page_views_from_node >= page_views_from_relationship 
                THEN page_views_from_node 
                ELSE page_views_from_relationship 
            END AS page_views,
            CASE 
                WHEN textbooks_accessed_from_node >= textbooks_from_relationship 
                THEN textbooks_accessed_from_node 
                ELSE textbooks_from_relationship 
            END AS textbooks_accessed,
            total_study_time_from_node AS total_study_time
        """
        
        with self.driver.session() as session:
            result = session.run(textbook_query)
            textbook_df = pd.DataFrame([dict(record) for record in result])
        
        elapsed_time = time.time() - start_time
        print(f"✅ Textbook features extracted for {len(textbook_df)} students. Time: {elapsed_time:.2f}s")
        return textbook_df

    def calculate_enhanced_risk_assessment(self, df):
        """Calculate comprehensive risk assessment with enhanced course difficulty factors."""
        print("\n=== CALCULATING ENHANCED RISK ASSESSMENT ===")
        
        # Enhanced multi-factor attrition risk assessment
        risk_conditions = [
            # High risk: Multiple failing courses + low GPA
            (df['failing_courses'] >= 3) & (df['cumulative_gpa'] < 2.0),
            
            # High risk: Very low GPA regardless of failures
            (df['cumulative_gpa'] < 1.5),
            
            # High risk: High failure rate (50%+ of courses failed)
            (df['failure_rate_percent'] >= 50.0),
            
            # High risk: Very high course load difficulty risk
            (df['course_load_difficulty_risk'] >= 2.0),
            
            # High risk: Poor prerequisite preparedness + high difficulty
            (df['prereq_preparedness_ratio'] < 0.3) & (df['avg_current_difficulty'] >= 4.0),
            
            # Medium risk: Some failures + low GPA
            (df['failing_courses'] >= 2) & (df['cumulative_gpa'] < 2.5),
            
            # Medium risk: Low completion ratio + poor performance
            (df['degree_completion_ratio'] < 0.3) & (df['cumulative_gpa'] < 2.5),
            
            # Medium risk: High work hours + academic struggles
            (df['work_hours_per_week'] > 20) & (df['cumulative_gpa'] < 2.5),
            
            # Medium risk: Large difficulty jump + low performance
            (df['difficulty_jump'] >= 2.0) & (df['cumulative_gpa'] < 2.5),
            
            # Medium risk: Poor learning style matching + high difficulty
            (df['learning_style_success_rate'] < 0.4) & (df['avg_current_difficulty'] >= 3.5),
            
            # Low risk: Some concerning factors
            (df['failing_courses'] >= 1) | (df['cumulative_gpa'] < 2.5) | (df['course_load_difficulty_risk'] >= 1.0)
        ]
        
        risk_values = [3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1]  # High=3, Medium=2, Low=1, No risk=0
        
        df['enhanced_attrition_risk_level'] = np.select(risk_conditions, risk_values, default=0)
        
        # Enhanced binary risk indicator
        df['enhanced_is_at_risk'] = ((df['failing_courses'] >= 2) | 
                                   (df['cumulative_gpa'] < 2.0) | 
                                   (df['failure_rate_percent'] >= 30.0) |
                                   (df['course_load_difficulty_risk'] >= 1.5) |
                                   (df['prereq_preparedness_ratio'] < 0.5)).astype(int)
        
        print(f"✅ Enhanced risk assessment calculated for {len(df)} students")
        return df

    def normalize_enhanced_features(self, df):
        """Normalize all numeric features to values between 0 and 1 for preprocessing."""
        print("\n=== NORMALIZING ENHANCED FEATURES (0-1 SCALE) ===")
        
        # Enhanced features to normalize
        numeric_features = [
            'cumulative_gpa', 'grade_volatility', 'total_courses_completed', 'total_credits_earned',
            'failing_courses', 'failure_rate_percent', 'enjoyment_rate', 'recent_performance',
            'avg_completed_difficulty', 'max_completed_difficulty', 'min_completed_difficulty',
            'avg_current_difficulty', 'max_current_difficulty', 'weighted_current_difficulty',
            'difficulty_jump', 'semester_difficulty_balance', 'course_load_difficulty_risk',
            'courses_with_met_prereqs', 'total_prereqs_met', 'prereq_preparedness_ratio',
            'learning_style_success_rate', 'degree_completion_ratio', 'avg_credits_per_course', 
            'current_course_load', 'current_credits', 'preferred_course_load', 'work_hours_per_week',
            'peer_network_size', 'peer_avg_gpa', 'professors_known', 'avg_course_difficulty',
            'pagerank', 'degree', 'communityId', 'page_views', 'textbooks_accessed', 'total_study_time',
            'enhanced_attrition_risk_level', 'dropout_probability', 'total_risk_score'
        ]
        
        normalized_df = df.copy()
        
        for feature in numeric_features:
            if feature in df.columns:
                # Handle special cases
                if feature == 'cumulative_gpa':
                    # GPA: 0-4 scale -> 0-1 scale
                    normalized_df[f'{feature}_normalized'] = df[feature] / 4.0
                elif feature == 'failure_rate_percent':
                    # Failure rate: 0-100% -> 0-1 scale
                    normalized_df[f'{feature}_normalized'] = df[feature] / 100.0
                elif feature == 'degree_completion_ratio' or feature == 'prereq_preparedness_ratio' or feature == 'learning_style_success_rate':
                    # Already 0-1 scale, but ensure it's capped
                    normalized_df[f'{feature}_normalized'] = np.clip(df[feature], 0, 1)
                elif feature == 'enhanced_attrition_risk_level':
                    # Risk level: 0-3 scale -> 0-1 scale
                    normalized_df[f'{feature}_normalized'] = df[feature] / 3.0
                elif feature == 'communityId':
                    # Community ID: normalize by max value
                    max_community = df[feature].max()
                    if max_community > 0:
                        normalized_df[f'{feature}_normalized'] = df[feature] / max_community
                    else:
                        normalized_df[f'{feature}_normalized'] = 0.0
                else:
                    # Min-max normalization for other features
                    min_val = df[feature].min()
                    max_val = df[feature].max()
                    if max_val > min_val:
                        normalized_df[f'{feature}_normalized'] = (df[feature] - min_val) / (max_val - min_val)
                    else:
                        normalized_df[f'{feature}_normalized'] = 0.0
        
        # Create enhanced final normalized risk score (0-1)
        risk_features = ['enhanced_attrition_risk_level_normalized', 'failure_rate_percent_normalized', 
                        'course_load_difficulty_risk_normalized', 'prereq_preparedness_ratio_normalized',
                        'learning_style_success_rate_normalized']
        
        # Invert GPA so higher GPA = lower risk
        if 'cumulative_gpa_normalized' in normalized_df.columns:
            normalized_df['gpa_risk_inverted'] = 1.0 - normalized_df['cumulative_gpa_normalized']
            risk_features = ['enhanced_attrition_risk_level_normalized', 'failure_rate_percent_normalized', 
                           'course_load_difficulty_risk_normalized', 'prereq_preparedness_ratio_normalized',
                           'learning_style_success_rate_normalized', 'gpa_risk_inverted']
        
        # Calculate weighted final enhanced risk score (0-1)
        weights = [0.25, 0.2, 0.2, 0.15, 0.1, 0.1]  # Weight different risk factors
        weighted_risk = 0.0
        
        for i, feature in enumerate(risk_features):
            if feature in normalized_df.columns:
                weighted_risk += normalized_df[feature] * weights[i]
        
        normalized_df['enhanced_final_risk_score'] = np.clip(weighted_risk, 0, 1)
        
        print(f"✅ Enhanced features normalized to 0-1 scale for {len(df)} students")
        print(f"   Enhanced final risk score range: {normalized_df['enhanced_final_risk_score'].min():.3f} - {normalized_df['enhanced_final_risk_score'].max():.3f}")
        
        return normalized_df

    def combine_enhanced_features(self, comprehensive_df, gds_df, textbook_df):
        """Merges all extracted features into a single DataFrame with enhanced risk assessment and normalization."""
        print("\n=== COMBINING ENHANCED FEATURE DATASETS ===")
        combined_df = comprehensive_df.copy()

        # Merge GDS features
        if not gds_df.empty:
            combined_df = combined_df.merge(gds_df, on='student_id', how='left')
        
        # Merge textbook features
        if not textbook_df.empty:
            combined_df = combined_df.merge(textbook_df, on='student_id', how='left')

        # Fill missing values with appropriate defaults
        combined_df = combined_df.fillna({
            'pagerank': 0.0, 'communityId': 0, 'degree': 0.0,
            'page_views': 0, 'textbooks_accessed': 0, 'total_study_time': 0,
            'cumulative_gpa': 0.0, 'grade_volatility': 0.0, 'total_courses_completed': 0,
            'total_credits_earned': 0, 'failing_courses': 0, 'failure_rate_percent': 0.0,
            'enjoyment_rate': 0.0, 'recent_performance': 0.0, 'degree_completion_ratio': 0.0,
            'avg_credits_per_course': 0.0, 'current_course_load': 0, 'current_credits': 0,
            'preferred_course_load': 4, 'work_hours_per_week': 0, 'peer_network_size': 0,
            'peer_avg_gpa': 0.0, 'professors_known': 0, 'avg_course_difficulty': 0.0,
            'learning_style': 'Unknown', 'preferred_pace': 'Standard', 'financial_aid_status': 'Unknown',
            'avg_completed_difficulty': 0.0, 'max_completed_difficulty': 0.0, 'min_completed_difficulty': 0.0,
            'avg_current_difficulty': 0.0, 'max_current_difficulty': 0.0, 'weighted_current_difficulty': 0.0,
            'difficulty_jump': 0.0, 'semester_difficulty_balance': 0.0, 'course_load_difficulty_risk': 0.0,
            'courses_with_met_prereqs': 0, 'total_prereqs_met': 0, 'prereq_preparedness_ratio': 0.0,
            'learning_style_success_rate': 0.5, 'dropout_probability': 0.0, 'total_risk_score': 0
        })

        # Calculate enhanced risk assessment
        combined_df = self.calculate_enhanced_risk_assessment(combined_df)
        
        # Normalize features for preprocessing
        combined_df = self.normalize_enhanced_features(combined_df)

        print(f"✅ Enhanced combined dataset created: {len(combined_df)} students with {len(combined_df.columns)} features")
        return combined_df

    def export_enhanced_dataset(self, combined_df):
        """Exports the final enhanced DataFrame to a CSV file."""
        print("\n=== EXPORTING ENHANCED DATASET ===")
        filename = 'enhanced_final_corrected_gds_apoc_features.csv'
        combined_df.to_csv(filename, index=False)
        print(f"   Saved enhanced comprehensive features to: {filename}")


def main():
    """Main function to orchestrate the enhanced comprehensive feature extraction process."""
    extractor = EnhancedFinalExtractor()
    try:
        gds_available, apoc_available = extractor.check_plugins()
        if not apoc_available:
            print("\n❌ APOC plugin is not available. Please install it to continue.")
            return

        # Extract enhanced comprehensive features
        comprehensive_df = extractor.extract_enhanced_comprehensive_features()
        textbook_df = extractor.extract_textbook_features()
        
        # Extract GDS features if available
        gds_df = pd.DataFrame()
        if gds_available:
            gds_df = extractor.extract_gds_features()
        else:
            print("\n⚠️ GDS is not available, skipping GDS features.")

        if not comprehensive_df.empty:
            # Combine all features with enhanced risk assessment and normalization
            combined_df = extractor.combine_enhanced_features(comprehensive_df, gds_df, textbook_df)
            
            # Export the final enhanced normalized dataset
            extractor.export_enhanced_dataset(combined_df)
            
            # Print enhanced summary statistics
            print(f"\n📊 ENHANCED DATASET SUMMARY:")
            print(f"   Students: {len(combined_df)}")
            print(f"   Features: {len(combined_df.columns)}")
            print(f"   Enhanced Final Risk Score Range: {combined_df['enhanced_final_risk_score'].min():.3f} - {combined_df['enhanced_final_risk_score'].max():.3f}")
            
            # Show enhanced risk distribution
            risk_dist = combined_df['enhanced_attrition_risk_level'].value_counts().sort_index()
            print(f"   Enhanced Risk Distribution:")
            risk_names = {0: "No Risk", 1: "Low Risk", 2: "Medium Risk", 3: "High Risk"}
            for level, count in risk_dist.items():
                print(f"     {risk_names.get(level, f'Level {level}')}: {count} students ({count/len(combined_df)*100:.1f}%)")
            
            # Show sample of enhanced features
            print(f"\n📈 ENHANCED DATA QUALITY CHECK:")
            enhanced_features = ['weighted_current_difficulty', 'prereq_preparedness_ratio', 
                               'learning_style_success_rate', 'course_load_difficulty_risk',
                               'difficulty_jump', 'semester_difficulty_balance']
            for feature in enhanced_features:
                if feature in combined_df.columns:
                    non_zero = (combined_df[feature] != 0).sum() if combined_df[feature].dtype in ['int64', 'float64'] else (combined_df[feature] != 'Unknown').sum()
                    print(f"   {feature}: {non_zero}/{len(combined_df)} non-default values ({non_zero/len(combined_df)*100:.1f}%)")
            
            print("\n🚀 ENHANCED FINAL CORRECTED GDS+APOC FEATURE EXTRACTION COMPLETED SUCCESSFULLY!")
            print("✅ All enhanced features normalized to 0-1 scale for ML preprocessing")
            print("✅ Enhanced final risk score calculated with course difficulty factors")
            print("✅ Dataset ready for enhanced machine learning model training")
            print("✅ Comprehensive course difficulty analysis implemented")
        else:
            print("\n⚠️ No data was extracted from APOC. Halting script.")

    except Exception as e:
        print(f"\n❌ An unexpected error occurred: {e}")
        import traceback
        traceback.print_exc()
    finally:
        print("\nClosing database connection.")
        extractor.close()

if __name__ == "__main__":
    main()
