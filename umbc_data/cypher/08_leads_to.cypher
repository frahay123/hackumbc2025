
MATCH (source:Course {id: "CSRR 100"}), (target:Course {id: "CSQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.82, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "CSRR 100"}), (target:Course {id: "CSXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.83, successCorrelation: 0.87}]->(target);

MATCH (source:Course {id: "CSRR 100"}), (target:Course {id: "CSOO 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.56, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "CSRR 100"}), (target:Course {id: "CSGG 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.59, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "CSRR 100"}), (target:Course {id: "CSSS 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "CSRR 100"}), (target:Course {id: "CSYY 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.6, successCorrelation: 0.54}]->(target);

MATCH (source:Course {id: "CSRR 100"}), (target:Course {id: "CSAA 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.38, successCorrelation: 0.56}]->(target);

MATCH (source:Course {id: "CSRR 100"}), (target:Course {id: "CSII 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.25, successCorrelation: 0.44}]->(target);

MATCH (source:Course {id: "CSRR 100"}), (target:Course {id: "CSQQ 200-5"})
CREATE (source)-[:LEADS_TO {commonality: 0.33, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "CSLL 100"}), (target:Course {id: "CSFF 300-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.8, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "CSLL 100"}), (target:Course {id: "CSYY 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.32, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "CSLL 100"}), (target:Course {id: "CSQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "CSLL 100"}), (target:Course {id: "CSFF 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.32, successCorrelation: 0.52}]->(target);

MATCH (source:Course {id: "CSLL 100"}), (target:Course {id: "CSII 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "CSLL 100"}), (target:Course {id: "CSGG 200-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.25, successCorrelation: 0.48}]->(target);

MATCH (source:Course {id: "CSTT 100"}), (target:Course {id: "CSRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.79, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "CSTT 100"}), (target:Course {id: "CSWW 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.28, successCorrelation: 0.46}]->(target);

MATCH (source:Course {id: "CSTT 100"}), (target:Course {id: "CSNN 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "CSTT 100"}), (target:Course {id: "CSII 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.48, successCorrelation: 0.46}]->(target);

MATCH (source:Course {id: "CSTT 100"}), (target:Course {id: "CSOO 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.47, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "CSQQ 100"}), (target:Course {id: "CSRR 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.76, successCorrelation: 0.61}]->(target);

MATCH (source:Course {id: "CSQQ 100"}), (target:Course {id: "CSCC 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.35, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "CSQQ 100"}), (target:Course {id: "CSOO 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "CSQQ 100"}), (target:Course {id: "CSYY 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.37, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "CSQQ 100"}), (target:Course {id: "CSAA 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.3, successCorrelation: 0.44}]->(target);

MATCH (source:Course {id: "CSQQ 100"}), (target:Course {id: "CSQQ 200-5"})
CREATE (source)-[:LEADS_TO {commonality: 0.33, successCorrelation: 0.44}]->(target);

MATCH (source:Course {id: "CSOO 300"}), (target:Course {id: "CSVV 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.23, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "CSOO 300"}), (target:Course {id: "CSXX 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.3, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "CSBB 100"}), (target:Course {id: "CSGG 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "CSBB 100"}), (target:Course {id: "CSZZ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.6, successCorrelation: 0.44}]->(target);

MATCH (source:Course {id: "CSBB 100"}), (target:Course {id: "CSAA 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.45, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "CSBB 100"}), (target:Course {id: "CSRR 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.47, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "CSBB 100"}), (target:Course {id: "CSNN 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.41, successCorrelation: 0.42}]->(target);

MATCH (source:Course {id: "CSBB 100"}), (target:Course {id: "CSFF 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.55, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "CSBB 100"}), (target:Course {id: "CSQQ 200-5"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.41}]->(target);

MATCH (source:Course {id: "CSBB 100"}), (target:Course {id: "CSRR 200-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.41, successCorrelation: 0.7}]->(target);

MATCH (source:Course {id: "CSYY 300"}), (target:Course {id: "CSVV 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.51, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "CSYY 300"}), (target:Course {id: "CSDD 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.54, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSSS 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.88, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSFF 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.81, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.77, successCorrelation: 0.85}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSOO 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.57}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSYY 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.33, successCorrelation: 0.48}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSZZ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.43, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSRR 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.6, successCorrelation: 0.61}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSFF 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.37, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSII 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.42}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSGG 200-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.55, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "CSFF 300"}), (target:Course {id: "CSWW 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.93, successCorrelation: 0.74}]->(target);

MATCH (source:Course {id: "CSFF 300"}), (target:Course {id: "CSXX 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.25, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "CSFF 300"}), (target:Course {id: "CSWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.3, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "CSCC 200"}), (target:Course {id: "CSOO 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.88, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "CSCC 200"}), (target:Course {id: "CSFF 300-7"})
CREATE (source)-[:LEADS_TO {commonality: 0.84, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "CSCC 200"}), (target:Course {id: "CSYY 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.33, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "CSCC 200"}), (target:Course {id: "CSXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.53, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "CSCC 200"}), (target:Course {id: "CSQQ 300-1"})
CREATE (source)-[:LEADS_TO {commonality: 0.24, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "CSPP 100"}), (target:Course {id: "CSWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.76, successCorrelation: 0.87}]->(target);

MATCH (source:Course {id: "CSPP 100"}), (target:Course {id: "CSXX 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.74, successCorrelation: 0.87}]->(target);

MATCH (source:Course {id: "CSPP 100"}), (target:Course {id: "CSCC 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.24, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "CSPP 100"}), (target:Course {id: "CSOO 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.3, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "CSPP 100"}), (target:Course {id: "CSZZ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.26, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "CSPP 100"}), (target:Course {id: "CSFF 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.26, successCorrelation: 0.61}]->(target);

MATCH (source:Course {id: "CSPP 100"}), (target:Course {id: "CSGG 200-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.5, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "CSPP 100"}), (target:Course {id: "CSQQ 200-5"})
CREATE (source)-[:LEADS_TO {commonality: 0.23, successCorrelation: 0.57}]->(target);

MATCH (source:Course {id: "CSRR 300"}), (target:Course {id: "CSXX 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.28, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "CSRR 300"}), (target:Course {id: "CSDD 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.42}]->(target);

MATCH (source:Course {id: "CSFF 300-7"}), (target:Course {id: "CSWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "CSFF 300-7"}), (target:Course {id: "CSDD 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.56, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "CSQQ 300"}), (target:Course {id: "CSKK 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "CSQQ 300"}), (target:Course {id: "CSWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.3, successCorrelation: 0.7}]->(target);

MATCH (source:Course {id: "CSOO 200"}), (target:Course {id: "CSQQ 300-1"})
CREATE (source)-[:LEADS_TO {commonality: 0.74, successCorrelation: 0.73}]->(target);

MATCH (source:Course {id: "CSOO 200"}), (target:Course {id: "CSDD 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.83, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "CSOO 200"}), (target:Course {id: "CSQQ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.23, successCorrelation: 0.45}]->(target);

MATCH (source:Course {id: "CSNN 100"}), (target:Course {id: "CSKK 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.78, successCorrelation: 0.7}]->(target);

MATCH (source:Course {id: "CSNN 100"}), (target:Course {id: "CSAA 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.73, successCorrelation: 0.86}]->(target);

MATCH (source:Course {id: "CSNN 100"}), (target:Course {id: "CSCC 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.41}]->(target);

MATCH (source:Course {id: "CSNN 100"}), (target:Course {id: "CSYY 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "CSNN 100"}), (target:Course {id: "CSGG 200-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.26, successCorrelation: 0.48}]->(target);

MATCH (source:Course {id: "CSNN 100"}), (target:Course {id: "CSQQ 200-5"})
CREATE (source)-[:LEADS_TO {commonality: 0.53, successCorrelation: 0.52}]->(target);

MATCH (source:Course {id: "CSNN 100"}), (target:Course {id: "CSRR 200-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.31, successCorrelation: 0.52}]->(target);

MATCH (source:Course {id: "CSGG 200"}), (target:Course {id: "CSRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.46, successCorrelation: 0.46}]->(target);

MATCH (source:Course {id: "CSGG 200"}), (target:Course {id: "CSQQ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.56, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "CSHH 100"}), (target:Course {id: "CSZZ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.82, successCorrelation: 0.74}]->(target);

MATCH (source:Course {id: "CSHH 100"}), (target:Course {id: "CSFF 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.87, successCorrelation: 0.81}]->(target);

MATCH (source:Course {id: "CSHH 100"}), (target:Course {id: "CSSS 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.22, successCorrelation: 0.7}]->(target);

MATCH (source:Course {id: "CSHH 100"}), (target:Course {id: "CSQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.49, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "CSHH 100"}), (target:Course {id: "CSRR 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.39, successCorrelation: 0.48}]->(target);

MATCH (source:Course {id: "CSHH 100"}), (target:Course {id: "CSRR 200-5"})
CREATE (source)-[:LEADS_TO {commonality: 0.49, successCorrelation: 0.57}]->(target);

MATCH (source:Course {id: "CSHH 100"}), (target:Course {id: "CSQQ 200-5"})
CREATE (source)-[:LEADS_TO {commonality: 0.41, successCorrelation: 0.52}]->(target);

MATCH (source:Course {id: "CSHH 100"}), (target:Course {id: "CSRR 200-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.32, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSVV 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.7, successCorrelation: 0.61}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSWW 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.81, successCorrelation: 0.84}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSJJ 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.93, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSOO 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.54, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSSS 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.3, successCorrelation: 0.52}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.55, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSFF 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.43, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSGG 200-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.41}]->(target);

MATCH (source:Course {id: "CSWW 200"}), (target:Course {id: "CSBB 100"})
CREATE (source)-[:LEADS_TO {commonality: 0.98, successCorrelation: 0.74}]->(target);

MATCH (source:Course {id: "CSWW 200"}), (target:Course {id: "CSOO 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.41, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "CSWW 200"}), (target:Course {id: "CSXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.51, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "CSWW 200"}), (target:Course {id: "CSFF 300-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.33, successCorrelation: 0.54}]->(target);

MATCH (source:Course {id: "CSDD 100"}), (target:Course {id: "CSYY 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.87, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "CSDD 100"}), (target:Course {id: "CSSS 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.98, successCorrelation: 0.86}]->(target);

MATCH (source:Course {id: "CSDD 100"}), (target:Course {id: "CSWW 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.25, successCorrelation: 0.6}]->(target);

MATCH (source:Course {id: "CSDD 100"}), (target:Course {id: "CSQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.28, successCorrelation: 0.56}]->(target);

MATCH (source:Course {id: "CSDD 100"}), (target:Course {id: "CSAA 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.56, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "CSDD 100"}), (target:Course {id: "CSNN 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.39, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "CSDD 100"}), (target:Course {id: "CSII 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.24, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "CSDD 100"}), (target:Course {id: "CSGG 200-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "CSDD 100"}), (target:Course {id: "CSOO 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.25, successCorrelation: 0.7}]->(target);

MATCH (source:Course {id: "CSDD 100-1"}), (target:Course {id: "CSJJ 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.91, successCorrelation: 0.88}]->(target);

MATCH (source:Course {id: "CSDD 100-1"}), (target:Course {id: "CSWW 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.23, successCorrelation: 0.62}]->(target);

MATCH (source:Course {id: "CSDD 100-1"}), (target:Course {id: "CSSS 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.41, successCorrelation: 0.6}]->(target);

MATCH (source:Course {id: "CSDD 100-1"}), (target:Course {id: "CSQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.5, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "CSDD 100-1"}), (target:Course {id: "CSNN 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.39, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "CSDD 100-1"}), (target:Course {id: "CSOO 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "CSDD 100-1"}), (target:Course {id: "CSXX 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.56, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "CSDD 100-1"}), (target:Course {id: "CSRR 200-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.37, successCorrelation: 0.4}]->(target);

MATCH (source:Course {id: "CSBB 100-9"}), (target:Course {id: "CSGG 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.38, successCorrelation: 0.48}]->(target);

MATCH (source:Course {id: "CSBB 100-9"}), (target:Course {id: "CSFF 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.24, successCorrelation: 0.59}]->(target);

MATCH (source:Course {id: "CSBB 100-9"}), (target:Course {id: "CSII 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "CSBB 100-9"}), (target:Course {id: "CSQQ 200-5"})
CREATE (source)-[:LEADS_TO {commonality: 0.39, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "CSSS 200"}), (target:Course {id: "CSII 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.88, successCorrelation: 0.76}]->(target);

MATCH (source:Course {id: "CSSS 200"}), (target:Course {id: "CSWW 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.22, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "CSSS 200"}), (target:Course {id: "CSXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.51, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "CSYY 200"}), (target:Course {id: "CSFF 300-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.94, successCorrelation: 0.87}]->(target);

MATCH (source:Course {id: "CSYY 200"}), (target:Course {id: "CSOO 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.23, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "CSYY 200"}), (target:Course {id: "CSFF 300-7"})
CREATE (source)-[:LEADS_TO {commonality: 0.54, successCorrelation: 0.41}]->(target);

MATCH (source:Course {id: "CSYY 200"}), (target:Course {id: "CSQQ 300-1"})
CREATE (source)-[:LEADS_TO {commonality: 0.32, successCorrelation: 0.49}]->(target);

MATCH (source:Course {id: "CSQQ 200"}), (target:Course {id: "CSYY 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.54, successCorrelation: 0.52}]->(target);

MATCH (source:Course {id: "CSQQ 200"}), (target:Course {id: "CSFF 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.35, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "CSQQ 200"}), (target:Course {id: "CSRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.46, successCorrelation: 0.7}]->(target);

MATCH (source:Course {id: "CSQQ 200"}), (target:Course {id: "CSFF 300-7"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.56}]->(target);

MATCH (source:Course {id: "CSQQ 200"}), (target:Course {id: "CSFF 300-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.6, successCorrelation: 0.42}]->(target);

MATCH (source:Course {id: "CSQQ 200"}), (target:Course {id: "CSQQ 300-1"})
CREATE (source)-[:LEADS_TO {commonality: 0.21, successCorrelation: 0.62}]->(target);

MATCH (source:Course {id: "CSZZ 200"}), (target:Course {id: "CSBB 100-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.78, successCorrelation: 0.61}]->(target);

MATCH (source:Course {id: "CSZZ 200"}), (target:Course {id: "CSQQ 300-1"})
CREATE (source)-[:LEADS_TO {commonality: 0.75, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "CSZZ 200"}), (target:Course {id: "CSOO 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.46, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "CSZZ 200"}), (target:Course {id: "CSFF 300-7"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "CSAA 200"}), (target:Course {id: "CSWW 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.28, successCorrelation: 0.49}]->(target);

MATCH (source:Course {id: "CSXX 300"}), (target:Course {id: "CSWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.51, successCorrelation: 0.42}]->(target);

MATCH (source:Course {id: "CSRR 200"}), (target:Course {id: "CSXX 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.8, successCorrelation: 0.7}]->(target);

MATCH (source:Course {id: "CSRR 200"}), (target:Course {id: "CSYY 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.22, successCorrelation: 0.59}]->(target);

MATCH (source:Course {id: "CSRR 200"}), (target:Course {id: "CSXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.32, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "CSFF 300-3"}), (target:Course {id: "CSJJ 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.79, successCorrelation: 0.86}]->(target);

MATCH (source:Course {id: "CSNN 200"}), (target:Course {id: "CSOO 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.48, successCorrelation: 0.48}]->(target);

MATCH (source:Course {id: "CSNN 200"}), (target:Course {id: "CSFF 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "CSNN 200"}), (target:Course {id: "CSRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "CSNN 200"}), (target:Course {id: "CSFF 300-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "CSQQ 300-1"}), (target:Course {id: "CSVV 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.74, successCorrelation: 0.79}]->(target);

MATCH (source:Course {id: "CSQQ 300-1"}), (target:Course {id: "CSKK 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.3, successCorrelation: 0.4}]->(target);

MATCH (source:Course {id: "CSQQ 300-1"}), (target:Course {id: "CSXX 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "CSQQ 300-1"}), (target:Course {id: "CSDD 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.39, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "CSZZ 100"}), (target:Course {id: "CSQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.85, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "CSZZ 100"}), (target:Course {id: "CSGG 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.34, successCorrelation: 0.54}]->(target);

MATCH (source:Course {id: "CSZZ 100"}), (target:Course {id: "CSWW 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.38, successCorrelation: 0.52}]->(target);

MATCH (source:Course {id: "CSZZ 100"}), (target:Course {id: "CSSS 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "CSZZ 100"}), (target:Course {id: "CSAA 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.24, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "CSZZ 100"}), (target:Course {id: "CSII 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.44, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "CSZZ 100"}), (target:Course {id: "CSRR 200-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.43, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "CSFF 200"}), (target:Course {id: "CSYY 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.59}]->(target);

MATCH (source:Course {id: "CSFF 200"}), (target:Course {id: "CSFF 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.41, successCorrelation: 0.48}]->(target);

MATCH (source:Course {id: "CSFF 200"}), (target:Course {id: "CSFF 300-7"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "CSFF 200"}), (target:Course {id: "CSXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.39, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "CSFF 200"}), (target:Course {id: "CSQQ 300-1"})
CREATE (source)-[:LEADS_TO {commonality: 0.39, successCorrelation: 0.44}]->(target);

MATCH (source:Course {id: "CSFF 200-6"}), (target:Course {id: "CSFF 300-7"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "CSII 200"}), (target:Course {id: "CSYY 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.5, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "CSII 200"}), (target:Course {id: "CSQQ 300-1"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.41}]->(target);

MATCH (source:Course {id: "CSRR 200-5"}), (target:Course {id: "CSQQ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.46, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "CSRR 200-5"}), (target:Course {id: "CSWW 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "CSRR 200-5"}), (target:Course {id: "CSFF 300-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.24, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "CSRR 200-5"}), (target:Course {id: "CSQQ 300-1"})
CREATE (source)-[:LEADS_TO {commonality: 0.45, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "CSGG 200-9"}), (target:Course {id: "CSRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.51, successCorrelation: 0.48}]->(target);

MATCH (source:Course {id: "CSOO 200-6"}), (target:Course {id: "CSYY 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.57}]->(target);

MATCH (source:Course {id: "CSOO 200-6"}), (target:Course {id: "CSFF 300-7"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "CSOO 200-6"}), (target:Course {id: "CSWW 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.22, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "CSOO 200-6"}), (target:Course {id: "CSFF 300-3"})
CREATE (source)-[:LEADS_TO {commonality: 0.57, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "CSQQ 200-5"}), (target:Course {id: "CSWW 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.31, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "CSQQ 200-5"}), (target:Course {id: "CSXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.48, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "CSXX 200"}), (target:Course {id: "CSQQ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.41, successCorrelation: 0.4}]->(target);

MATCH (source:Course {id: "CSXX 200"}), (target:Course {id: "CSWW 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.48}]->(target);

MATCH (source:Course {id: "CSRR 200-3"}), (target:Course {id: "CSQQ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.93, successCorrelation: 0.82}]->(target);

MATCH (source:Course {id: "CSRR 200-3"}), (target:Course {id: "CSDD 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.74, successCorrelation: 0.76}]->(target);

MATCH (source:Course {id: "CSRR 200-3"}), (target:Course {id: "CSYY 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "CSRR 200-3"}), (target:Course {id: "CSRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.48, successCorrelation: 0.45}]->(target);

MATCH (source:Course {id: "CSRR 200-3"}), (target:Course {id: "CSQQ 300-1"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "BOOO 100"}), (target:Course {id: "BOOO 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.89, successCorrelation: 0.81}]->(target);

MATCH (source:Course {id: "BOOO 100"}), (target:Course {id: "BMMM 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.85, successCorrelation: 0.8}]->(target);

MATCH (source:Course {id: "BOOO 100"}), (target:Course {id: "BAAA 300-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.99, successCorrelation: 0.79}]->(target);

MATCH (source:Course {id: "BOOO 100"}), (target:Course {id: "BGGG 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.56}]->(target);

MATCH (source:Course {id: "BOOO 100"}), (target:Course {id: "BQQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.55, successCorrelation: 0.45}]->(target);

MATCH (source:Course {id: "BOOO 100"}), (target:Course {id: "BUUU 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.28, successCorrelation: 0.44}]->(target);

MATCH (source:Course {id: "BOOO 100"}), (target:Course {id: "BZZZ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.35, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BOOO 100"}), (target:Course {id: "BHHH 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.53, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "BGGG 200"}), (target:Course {id: "BJJJ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.39, successCorrelation: 0.52}]->(target);

MATCH (source:Course {id: "BGGG 200"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.43, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "BGGG 200"}), (target:Course {id: "BZZZ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.55, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "BGGG 200"}), (target:Course {id: "BAAA 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.54, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BRRR 100"}), (target:Course {id: "BGGG 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.75, successCorrelation: 0.75}]->(target);

MATCH (source:Course {id: "BRRR 100"}), (target:Course {id: "BQQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.46, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "BRRR 100"}), (target:Course {id: "BUUU 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "BRRR 100"}), (target:Course {id: "BHHH 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.4}]->(target);

MATCH (source:Course {id: "BRRR 100"}), (target:Course {id: "BNNN 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.2, successCorrelation: 0.61}]->(target);

MATCH (source:Course {id: "BJJJ 300"}), (target:Course {id: "BWWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.54}]->(target);

MATCH (source:Course {id: "BBBB 100"}), (target:Course {id: "BGGG 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.49, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "BBBB 100"}), (target:Course {id: "BUUU 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BBBB 100"}), (target:Course {id: "BVVV 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.54, successCorrelation: 0.41}]->(target);

MATCH (source:Course {id: "BBBB 100"}), (target:Course {id: "BHHH 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.44, successCorrelation: 0.41}]->(target);

MATCH (source:Course {id: "BBBB 100"}), (target:Course {id: "BLLL 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.45, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "BBBB 100"}), (target:Course {id: "BZZZ 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.3, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BLLL 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.92, successCorrelation: 0.81}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BJJJ 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.95, successCorrelation: 0.79}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BMMM 300-1"})
CREATE (source)-[:LEADS_TO {commonality: 0.97, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BMMM 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BDDD 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.57, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.25, successCorrelation: 0.54}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BOOO 300-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.49, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BPPP 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.26, successCorrelation: 0.45}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BZZZ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BFFF 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.34, successCorrelation: 0.6}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BAAA 300-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.34, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "BXXX 400"}), (target:Course {id: "BHHH 100"})
CREATE (source)-[:LEADS_TO {commonality: 0.76, successCorrelation: 0.81}]->(target);

MATCH (source:Course {id: "BEEE 100"}), (target:Course {id: "BUUU 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.97, successCorrelation: 0.78}]->(target);

MATCH (source:Course {id: "BEEE 100"}), (target:Course {id: "BGGG 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.87, successCorrelation: 0.73}]->(target);

MATCH (source:Course {id: "BEEE 100"}), (target:Course {id: "BVVV 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "BEEE 100"}), (target:Course {id: "BNNN 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.61}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.79, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BOOO 300-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.72, successCorrelation: 0.72}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.91, successCorrelation: 0.78}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BWWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.88, successCorrelation: 0.78}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BLLL 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.56}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BBBB 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.59}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BTTT 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.37, successCorrelation: 0.62}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BPPP 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.52}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BAAA 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.45, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BOOO 300"}), (target:Course {id: "BRRR 100"})
CREATE (source)-[:LEADS_TO {commonality: 0.83, successCorrelation: 0.8}]->(target);

MATCH (source:Course {id: "BOOO 300"}), (target:Course {id: "BTTT 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.82, successCorrelation: 0.71}]->(target);

MATCH (source:Course {id: "BOOO 300"}), (target:Course {id: "BOOO 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.57, successCorrelation: 0.54}]->(target);

MATCH (source:Course {id: "BMMM 300"}), (target:Course {id: "BXXX 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.46, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "BMMM 300"}), (target:Course {id: "BWWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.51, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "BHHH 100"}), (target:Course {id: "BHHH 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.78, successCorrelation: 0.78}]->(target);

MATCH (source:Course {id: "BHHH 100"}), (target:Course {id: "BOOO 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.85, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "BHHH 100"}), (target:Course {id: "BGGG 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.21, successCorrelation: 0.56}]->(target);

MATCH (source:Course {id: "BHHH 100"}), (target:Course {id: "BUUU 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.39, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "BHHH 100"}), (target:Course {id: "BZZZ 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.44, successCorrelation: 0.54}]->(target);

MATCH (source:Course {id: "BHHH 100"}), (target:Course {id: "BDDD 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "BGGG 100"}), (target:Course {id: "BHHH 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.99, successCorrelation: 0.71}]->(target);

MATCH (source:Course {id: "BGGG 100"}), (target:Course {id: "BZZZ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.98, successCorrelation: 0.83}]->(target);

MATCH (source:Course {id: "BGGG 100"}), (target:Course {id: "BQQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.56, successCorrelation: 0.46}]->(target);

MATCH (source:Course {id: "BGGG 100"}), (target:Course {id: "BGGG 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.34, successCorrelation: 0.61}]->(target);

MATCH (source:Course {id: "BGGG 100"}), (target:Course {id: "BGGG 200-8-5"})
CREATE (source)-[:LEADS_TO {commonality: 0.59, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "BGGG 100"}), (target:Course {id: "BZZZ 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BGGG 100"}), (target:Course {id: "BNNN 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.48, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "BGGG 100"}), (target:Course {id: "BDDD 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.21, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "BFFF 100"}), (target:Course {id: "BFFF 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.82, successCorrelation: 0.73}]->(target);

MATCH (source:Course {id: "BFFF 100"}), (target:Course {id: "BVVV 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.28, successCorrelation: 0.41}]->(target);

MATCH (source:Course {id: "BFFF 100"}), (target:Course {id: "BHHH 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.54, successCorrelation: 0.45}]->(target);

MATCH (source:Course {id: "BFFF 100"}), (target:Course {id: "BLLL 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.57}]->(target);

MATCH (source:Course {id: "BFFF 100"}), (target:Course {id: "BZZZ 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.25, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "BFFF 100"}), (target:Course {id: "BDDD 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.48, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "BLLL 300"}), (target:Course {id: "BGGG 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.86, successCorrelation: 0.61}]->(target);

MATCH (source:Course {id: "BLLL 300"}), (target:Course {id: "BJJJ 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.61}]->(target);

MATCH (source:Course {id: "BUUU 200"}), (target:Course {id: "BAAA 300-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.78, successCorrelation: 0.85}]->(target);

MATCH (source:Course {id: "BUUU 200"}), (target:Course {id: "BLLL 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.43, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "BUUU 200"}), (target:Course {id: "BDDD 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.41, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "BUUU 200"}), (target:Course {id: "BTTT 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.57, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "BUUU 200"}), (target:Course {id: "BMMM 300-1"})
CREATE (source)-[:LEADS_TO {commonality: 0.56, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "BUUU 200"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.47, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "BUUU 200"}), (target:Course {id: "BZZZ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.55, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "BXXX 100"}), (target:Course {id: "BLLL 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.82, successCorrelation: 0.85}]->(target);

MATCH (source:Course {id: "BXXX 100"}), (target:Course {id: "BBBB 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.71, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "BXXX 100"}), (target:Course {id: "BDDD 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.98, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "BXXX 100"}), (target:Course {id: "BQQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.41, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "BXXX 100"}), (target:Course {id: "BUUU 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.46, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BXXX 100"}), (target:Course {id: "BHHH 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "BXXX 100"}), (target:Course {id: "BZZZ 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.5, successCorrelation: 0.52}]->(target);

MATCH (source:Course {id: "BUUU 200-6"}), (target:Course {id: "BFFF 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.99, successCorrelation: 0.72}]->(target);

MATCH (source:Course {id: "BUUU 200-6"}), (target:Course {id: "BJJJ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.21, successCorrelation: 0.41}]->(target);

MATCH (source:Course {id: "BUUU 200-6"}), (target:Course {id: "BDDD 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.25, successCorrelation: 0.49}]->(target);

MATCH (source:Course {id: "BUUU 200-6"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.37, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "BUUU 200-6"}), (target:Course {id: "BBBB 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.54, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "BUUU 200-6"}), (target:Course {id: "BZZZ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.48, successCorrelation: 0.42}]->(target);

MATCH (source:Course {id: "BDDD 300"}), (target:Course {id: "BOOO 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.74, successCorrelation: 0.81}]->(target);

MATCH (source:Course {id: "BDDD 300"}), (target:Course {id: "BXXX 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.72, successCorrelation: 0.9}]->(target);

MATCH (source:Course {id: "BBBB 100-9"}), (target:Course {id: "BUUU 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.94, successCorrelation: 0.62}]->(target);

MATCH (source:Course {id: "BBBB 100-9"}), (target:Course {id: "BLLL 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.82, successCorrelation: 0.74}]->(target);

MATCH (source:Course {id: "BBBB 100-9"}), (target:Course {id: "BGGG 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.48, successCorrelation: 0.45}]->(target);

MATCH (source:Course {id: "BBBB 100-9"}), (target:Course {id: "BHHH 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.42}]->(target);

MATCH (source:Course {id: "BBBB 100-9"}), (target:Course {id: "BDDD 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.56, successCorrelation: 0.7}]->(target);

MATCH (source:Course {id: "BHHH 100-1"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.8, successCorrelation: 0.85}]->(target);

MATCH (source:Course {id: "BHHH 100-1"}), (target:Course {id: "BHHH 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.81, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "BHHH 100-1"}), (target:Course {id: "BUUU 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.49, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "BHHH 100-1"}), (target:Course {id: "BUUU 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.34, successCorrelation: 0.55}]->(target);

MATCH (source:Course {id: "BHHH 100-1"}), (target:Course {id: "BVVV 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.57, successCorrelation: 0.49}]->(target);

MATCH (source:Course {id: "BHHH 100-1"}), (target:Course {id: "BZZZ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.33, successCorrelation: 0.42}]->(target);

MATCH (source:Course {id: "BHHH 100-1"}), (target:Course {id: "BLLL 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.43, successCorrelation: 0.6}]->(target);

MATCH (source:Course {id: "BHHH 100-1"}), (target:Course {id: "BZZZ 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.26, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "BEEE 100-2"}), (target:Course {id: "BUUU 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.54, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "BEEE 100-2"}), (target:Course {id: "BHHH 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.46, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "BEEE 100-2"}), (target:Course {id: "BLLL 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "BEEE 100-2"}), (target:Course {id: "BZZZ 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.32, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "BEEE 100-2"}), (target:Course {id: "BNNN 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.47, successCorrelation: 0.62}]->(target);

MATCH (source:Course {id: "BXXX 300"}), (target:Course {id: "BXXX 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.26, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "BXXX 300"}), (target:Course {id: "BGGG 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.23, successCorrelation: 0.46}]->(target);

MATCH (source:Course {id: "BXXX 300"}), (target:Course {id: "BWWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.32, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "BBBB 300"}), (target:Course {id: "BOOO 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.28, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "BBBB 300"}), (target:Course {id: "BWWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.62}]->(target);

MATCH (source:Course {id: "BTTT 300"}), (target:Course {id: "BJJJ 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "BTTT 300"}), (target:Course {id: "BGGG 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.28, successCorrelation: 0.6}]->(target);

MATCH (source:Course {id: "BVVV 200"}), (target:Course {id: "BDDD 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.71, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BVVV 200"}), (target:Course {id: "BTTT 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.9, successCorrelation: 0.78}]->(target);

MATCH (source:Course {id: "BVVV 200"}), (target:Course {id: "BJJJ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.57}]->(target);

MATCH (source:Course {id: "BVVV 200"}), (target:Course {id: "BMMM 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.46, successCorrelation: 0.46}]->(target);

MATCH (source:Course {id: "BVVV 200"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.51, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "BVVV 200"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.43, successCorrelation: 0.59}]->(target);

MATCH (source:Course {id: "BVVV 200"}), (target:Course {id: "BAAA 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.49}]->(target);

MATCH (source:Course {id: "BOOO 300-8"}), (target:Course {id: "BOOO 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.57, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "BOOO 300-8"}), (target:Course {id: "BJJJ 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.39, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BMMM 300-1"}), (target:Course {id: "BXXX 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.3, successCorrelation: 0.62}]->(target);

MATCH (source:Course {id: "BMMM 300-1"}), (target:Course {id: "BGGG 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.39, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "BMMM 300-1"}), (target:Course {id: "BVVV 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.47, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BZZZ 200"}), (target:Course {id: "BOOO 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.22, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "BZZZ 200"}), (target:Course {id: "BMMM 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.28, successCorrelation: 0.41}]->(target);

MATCH (source:Course {id: "BZZZ 200"}), (target:Course {id: "BLLL 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.24, successCorrelation: 0.57}]->(target);

MATCH (source:Course {id: "BZZZ 200"}), (target:Course {id: "BTTT 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.47}]->(target);

MATCH (source:Course {id: "BZZZ 200"}), (target:Course {id: "BOOO 300-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.31, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "BZZZ 200"}), (target:Course {id: "BPPP 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "BZZZ 200"}), (target:Course {id: "BAAA 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.48, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "BZZZ 200"}), (target:Course {id: "BFFF 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BTTT 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.9, successCorrelation: 0.84}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BPPP 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.91, successCorrelation: 0.85}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BOOO 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.25, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BLLL 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.56, successCorrelation: 0.46}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BDDD 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.55, successCorrelation: 0.4}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.49}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BBBB 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.28, successCorrelation: 0.44}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BTTT 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.57, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BOOO 300-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.43, successCorrelation: 0.44}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BAAA 300-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.49, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "BHHH 200-8"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.34, successCorrelation: 0.59}]->(target);

MATCH (source:Course {id: "BHHH 200-8"}), (target:Course {id: "BTTT 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.46, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "BHHH 200-8"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "BHHH 200-8"}), (target:Course {id: "BPPP 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.26, successCorrelation: 0.46}]->(target);

MATCH (source:Course {id: "BHHH 200-8"}), (target:Course {id: "BAAA 300-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.54}]->(target);

MATCH (source:Course {id: "BRRR 300"}), (target:Course {id: "BOOO 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.59, successCorrelation: 0.59}]->(target);

MATCH (source:Course {id: "BRRR 300"}), (target:Course {id: "BXXX 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.5, successCorrelation: 0.59}]->(target);

MATCH (source:Course {id: "BRRR 300"}), (target:Course {id: "BTTT 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.21, successCorrelation: 0.42}]->(target);

MATCH (source:Course {id: "BRRR 300"}), (target:Course {id: "BWWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BGGG 200-8-5"}), (target:Course {id: "BJJJ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "BGGG 200-8-5"}), (target:Course {id: "BOOO 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.45, successCorrelation: 0.54}]->(target);

MATCH (source:Course {id: "BGGG 200-8-5"}), (target:Course {id: "BDDD 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.36, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "BGGG 200-8-5"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "BGGG 200-8-5"}), (target:Course {id: "BPPP 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.49, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "BGGG 200-8-5"}), (target:Course {id: "BZZZ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.32, successCorrelation: 0.53}]->(target);

MATCH (source:Course {id: "BGGG 200-8-5"}), (target:Course {id: "BFFF 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "BGGG 200-8-5"}), (target:Course {id: "BAAA 300-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.6, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "BLLL 100"}), (target:Course {id: "BVVV 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.83, successCorrelation: 0.85}]->(target);

MATCH (source:Course {id: "BLLL 100"}), (target:Course {id: "BQQQ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.46, successCorrelation: 0.67}]->(target);

MATCH (source:Course {id: "BLLL 100"}), (target:Course {id: "BGGG 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.37, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "BLLL 100"}), (target:Course {id: "BVVV 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.55, successCorrelation: 0.61}]->(target);

MATCH (source:Course {id: "BLLL 100"}), (target:Course {id: "BHHH 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.34, successCorrelation: 0.45}]->(target);

MATCH (source:Course {id: "BLLL 100"}), (target:Course {id: "BNNN 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.55, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "BLLL 200"}), (target:Course {id: "BAAA 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.96, successCorrelation: 0.7}]->(target);

MATCH (source:Course {id: "BLLL 200"}), (target:Course {id: "BJJJ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.31, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "BLLL 200"}), (target:Course {id: "BOOO 300-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.29, successCorrelation: 0.65}]->(target);

MATCH (source:Course {id: "BLLL 200"}), (target:Course {id: "BZZZ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.24, successCorrelation: 0.44}]->(target);

MATCH (source:Course {id: "BPPP 300"}), (target:Course {id: "BTTT 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.44}]->(target);

MATCH (source:Course {id: "BPPP 300"}), (target:Course {id: "BGGG 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.52, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BZZZ 300"}), (target:Course {id: "BGGG 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.89, successCorrelation: 0.88}]->(target);

MATCH (source:Course {id: "BZZZ 300"}), (target:Course {id: "BXXX 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "BZZZ 300"}), (target:Course {id: "BTTT 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.44, successCorrelation: 0.62}]->(target);

MATCH (source:Course {id: "BZZZ 200-6"}), (target:Course {id: "BVVV 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.8, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "BZZZ 200-6"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.84, successCorrelation: 0.69}]->(target);

MATCH (source:Course {id: "BZZZ 200-6"}), (target:Course {id: "BMMM 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.25, successCorrelation: 0.42}]->(target);

MATCH (source:Course {id: "BZZZ 200-6"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.4, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "BZZZ 200-6"}), (target:Course {id: "BBBB 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.22, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "BZZZ 200-6"}), (target:Course {id: "BTTT 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.31, successCorrelation: 0.49}]->(target);

MATCH (source:Course {id: "BZZZ 200-6"}), (target:Course {id: "BAAA 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.27, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "BZZZ 200-6"}), (target:Course {id: "BFFF 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.26, successCorrelation: 0.64}]->(target);

MATCH (source:Course {id: "BNNN 200"}), (target:Course {id: "BJJJ 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.37, successCorrelation: 0.44}]->(target);

MATCH (source:Course {id: "BNNN 200"}), (target:Course {id: "BLLL 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.35, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "BNNN 200"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.35, successCorrelation: 0.41}]->(target);

MATCH (source:Course {id: "BNNN 200"}), (target:Course {id: "BAAA 300-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.57, successCorrelation: 0.46}]->(target);

MATCH (source:Course {id: "BAAA 300"}), (target:Course {id: "BGGG 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.51, successCorrelation: 0.63}]->(target);

MATCH (source:Course {id: "BAAA 300"}), (target:Course {id: "BVVV 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.49, successCorrelation: 0.59}]->(target);

MATCH (source:Course {id: "BAAA 300"}), (target:Course {id: "BWWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.23, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "BWWW 400"}), (target:Course {id: "BOOO 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.84, successCorrelation: 0.74}]->(target);

MATCH (source:Course {id: "BFFF 300"}), (target:Course {id: "BTTT 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.44, successCorrelation: 0.49}]->(target);

MATCH (source:Course {id: "BFFF 300"}), (target:Course {id: "BVVV 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.31, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "BDDD 200"}), (target:Course {id: "BOOO 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.96, successCorrelation: 0.87}]->(target);

MATCH (source:Course {id: "BDDD 200"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.42, successCorrelation: 0.51}]->(target);

MATCH (source:Course {id: "BDDD 200"}), (target:Course {id: "BBBB 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.5, successCorrelation: 0.7}]->(target);

MATCH (source:Course {id: "BDDD 200"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.3, successCorrelation: 0.5}]->(target);

MATCH (source:Course {id: "BDDD 200"}), (target:Course {id: "BFFF 300"})
CREATE (source)-[:LEADS_TO {commonality: 0.44, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "BDDD 200"}), (target:Course {id: "BAAA 300-9"})
CREATE (source)-[:LEADS_TO {commonality: 0.55, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "BPPP 100"}), (target:Course {id: "BGGG 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.56, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "BPPP 100"}), (target:Course {id: "BGGG 200-8"})
CREATE (source)-[:LEADS_TO {commonality: 0.3, successCorrelation: 0.43}]->(target);

MATCH (source:Course {id: "BPPP 100"}), (target:Course {id: "BZZZ 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.48, successCorrelation: 0.68}]->(target);

MATCH (source:Course {id: "BPPP 100"}), (target:Course {id: "BLLL 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.37, successCorrelation: 0.58}]->(target);

MATCH (source:Course {id: "BPPP 100"}), (target:Course {id: "BZZZ 200-6"})
CREATE (source)-[:LEADS_TO {commonality: 0.43, successCorrelation: 0.49}]->(target);

MATCH (source:Course {id: "BPPP 100"}), (target:Course {id: "BDDD 200"})
CREATE (source)-[:LEADS_TO {commonality: 0.58, successCorrelation: 0.46}]->(target);

MATCH (source:Course {id: "BAAA 300-9"}), (target:Course {id: "BTTT 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.2, successCorrelation: 0.42}]->(target);

MATCH (source:Course {id: "BAAA 300-9"}), (target:Course {id: "BJJJ 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.35, successCorrelation: 0.66}]->(target);

MATCH (source:Course {id: "BAAA 300-9"}), (target:Course {id: "BWWW 400"})
CREATE (source)-[:LEADS_TO {commonality: 0.25, successCorrelation: 0.45}]->(target);
