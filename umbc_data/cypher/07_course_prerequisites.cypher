
MATCH (source:Course {id: "CSFF 300"}), (target:Course {id: "CSWW 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSWW 200"}), (target:Course {id: "CSBB 100"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSSS 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSSS 200"}), (target:Course {id: "CSII 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSRR 100"}), (target:Course {id: "CSQQ 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSZZ 200"}), (target:Course {id: "CSBB 100-9"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BOOO 100"}), (target:Course {id: "BOOO 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BOOO 300"}), (target:Course {id: "BRRR 100"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BLLL 300"}), (target:Course {id: "BGGG 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BXXX 400"}), (target:Course {id: "BHHH 100"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BHHH 100"}), (target:Course {id: "BHHH 200-8"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BWWW 400"}), (target:Course {id: "BOOO 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSCC 200"}), (target:Course {id: "CSOO 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "CSDD 100"}), (target:Course {id: "CSYY 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSLL 100"}), (target:Course {id: "CSVV 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSVV 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "CSQQ 300-1"}), (target:Course {id: "CSVV 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSFF 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSTT 100"}), (target:Course {id: "CSRR 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "CSCC 200"}), (target:Course {id: "CSFF 300-7"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "CSRR 200-3"}), (target:Course {id: "CSQQ 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "CSNN 100"}), (target:Course {id: "CSKK 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "CSDD 100"}), (target:Course {id: "CSSS 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSWW 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D-"}]->(target);

MATCH (source:Course {id: "CSZZ 100"}), (target:Course {id: "CSQQ 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "CSRR 200"}), (target:Course {id: "CSXX 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D-"}]->(target);

MATCH (source:Course {id: "CSHH 100"}), (target:Course {id: "CSZZ 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "CSNN 100"}), (target:Course {id: "CSAA 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "CSRR 100"}), (target:Course {id: "CSXX 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "CSQQ 100"}), (target:Course {id: "CSRR 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D-"}]->(target);

MATCH (source:Course {id: "CSLL 100"}), (target:Course {id: "CSFF 300-3"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "CSYY 200"}), (target:Course {id: "CSFF 300-3"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "CSZZ 200"}), (target:Course {id: "CSQQ 300-1"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "CSOO 200"}), (target:Course {id: "CSQQ 300-1"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSHH 100"}), (target:Course {id: "CSFF 200-6"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSRR 200-5"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSPP 100"}), (target:Course {id: "CSWW 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D-"}]->(target);

MATCH (source:Course {id: "CSAA 100"}), (target:Course {id: "CSWW 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "CSRR 200-3"}), (target:Course {id: "CSDD 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "CSOO 200"}), (target:Course {id: "CSDD 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D-"}]->(target);

MATCH (source:Course {id: "CSPP 100"}), (target:Course {id: "CSXX 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSFF 300-3"}), (target:Course {id: "CSJJ 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "CSVV 100"}), (target:Course {id: "CSJJ 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "CSDD 100-1"}), (target:Course {id: "CSJJ 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "BDDD 300"}), (target:Course {id: "BOOO 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BHHH 100"}), (target:Course {id: "BOOO 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BRRR 100"}), (target:Course {id: "BGGG 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BRRR 100"}), (target:Course {id: "BJJJ 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "BDDD 300"}), (target:Course {id: "BXXX 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BDDD 200"}), (target:Course {id: "BOOO 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D-"}]->(target);

MATCH (source:Course {id: "BOOO 100"}), (target:Course {id: "BMMM 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "BOOO 300"}), (target:Course {id: "BTTT 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D-"}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BTTT 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BXXX 100"}), (target:Course {id: "BLLL 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BLLL 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "BEEE 100"}), (target:Course {id: "BUUU 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BJJJ 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BBBB 100-9"}), (target:Course {id: "BUUU 200-6"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D-"}]->(target);

MATCH (source:Course {id: "BVVV 200"}), (target:Course {id: "BDDD 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "BEEE 100"}), (target:Course {id: "BGGG 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BZZZ 300"}), (target:Course {id: "BGGG 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BHHH 100-1"}), (target:Course {id: "BXXX 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BXXX 100"}), (target:Course {id: "BBBB 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "BVVV 200"}), (target:Course {id: "BTTT 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BOOO 300-8"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "BQQQ 200"}), (target:Course {id: "BMMM 300-1"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BZZZ 200-6"}), (target:Course {id: "BVVV 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D-"}]->(target);

MATCH (source:Course {id: "BLLL 100"}), (target:Course {id: "BVVV 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "BHHH 100-1"}), (target:Course {id: "BHHH 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BGGG 100"}), (target:Course {id: "BHHH 200-8"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BZZZ 200-6"}), (target:Course {id: "BRRR 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D-"}]->(target);

MATCH (source:Course {id: "BLLL 100"}), (target:Course {id: "BGGG 200-8-5"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "BBBB 100-9"}), (target:Course {id: "BLLL 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BLLL 100"}), (target:Course {id: "BPPP 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "BHHH 200"}), (target:Course {id: "BPPP 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "D"}]->(target);

MATCH (source:Course {id: "BGGG 100"}), (target:Course {id: "BZZZ 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "BLLL 200"}), (target:Course {id: "BAAA 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BGGG 200-8"}), (target:Course {id: "BWWW 400"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BUUU 200-6"}), (target:Course {id: "BFFF 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "BFFF 100"}), (target:Course {id: "BFFF 300"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C"}]->(target);

MATCH (source:Course {id: "BXXX 100"}), (target:Course {id: "BDDD 200"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Recommended"}]->(target);

MATCH (source:Course {id: "BUUU 200"}), (target:Course {id: "BAAA 300-9"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);

MATCH (source:Course {id: "BOOO 100"}), (target:Course {id: "BAAA 300-9"})
CREATE (source)-[:PREREQUISITE_FOR {strength: "Required", minGrade: "C-"}]->(target);
