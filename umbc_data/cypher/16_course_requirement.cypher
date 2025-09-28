
MATCH (c:Course {id: "CSBB 100"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSZZ 100"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSZZ 200"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSRR 200-5"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSRR 200-3"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSOO 300"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSYY 300"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSFF 300"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSRR 300"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSQQ 300"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSWW 300"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSVV 400"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSXX 400"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSJJ 400"}), (r:RequirementGroup {id: "REQ-CORE-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSXX 200"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSWW 400"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSRR 100"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSWW 200"}), (r:RequirementGroup {id: "REQ-ELECTIVE-2-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSFF 300-7"}), (r:RequirementGroup {id: "REQ-ELECTIVE-2-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSXX 200"}), (r:RequirementGroup {id: "REQ-ELECTIVE-2-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSRR 200"}), (r:RequirementGroup {id: "REQ-ELECTIVE-2-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BXXX 100"}), (r:RequirementGroup {id: "REQ-ELECTIVE-2-BS-ComputerScience-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSRR 100"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSLL 100"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSHH 100"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSOO 200"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSWW 200"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSSS 200"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSQQ 200"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSZZ 200"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSAA 200"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSNN 200"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSII 200"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSGG 200-9"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSQQ 200-5"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSRR 200-3"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSFF 300"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSFF 300-7"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSWW 300"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSQQ 300-1"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSVV 400"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSXX 400"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSJJ 400"}), (r:RequirementGroup {id: "REQ-CORE-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BXXX 300"}), (r:RequirementGroup {id: "REQ-CONCENTRATION-1-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSCC 200"}), (r:RequirementGroup {id: "REQ-CONCENTRATION-1-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BZZZ 200-6"}), (r:RequirementGroup {id: "REQ-CONCENTRATION-1-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BMMM 300"}), (r:RequirementGroup {id: "REQ-CONCENTRATION-1-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSFF 200"}), (r:RequirementGroup {id: "REQ-CONCENTRATION-1-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSYY 300"}), (r:RequirementGroup {id: "REQ-CONCENTRATION-1-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSKK 400"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSXX 300"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSOO 300"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSDD 100-1"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BTTT 400"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSBB 100"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BMMM 300"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BA-ComputerScience-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BBBB 100"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BEEE 100"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BLLL 100"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BQQQ 200"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BHHH 200"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BHHH 200-8"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BLLL 200"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BDDD 200"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BOOO 300"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BMMM 300"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BXXX 300"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BMMM 300-1"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BAAA 300"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BAAA 300-9"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BXXX 400"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BJJJ 400"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BVVV 400"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BWWW 400"}), (r:RequirementGroup {id: "REQ-CORE-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSFF 300-7"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BJJJ 300"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BPPP 100"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BLLL 300"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BVVV 200"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BDDD 300"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BHHH 100-1"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSXX 400"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BFFF 100"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSNN 100"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BEEE 100-2"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BRRR 300"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSHH 100"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSRR 100"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BNNN 200"}), (r:RequirementGroup {id: "REQ-SPECIALIZATION-2-BS-Biology-1"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BOOO 100"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BBBB 100"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BHHH 100"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BXXX 100"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BLLL 100"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BPPP 100"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BHHH 200-8"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BNNN 200"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BDDD 200"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BMMM 300"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BXXX 300"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BPPP 300"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BZZZ 300"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BAAA 300-9"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BOOO 400"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BXXX 400"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BTTT 400"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BJJJ 400"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BGGG 400"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BVVV 400"}), (r:RequirementGroup {id: "REQ-CORE-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BRRR 100"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BQQQ 200"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BUUU 200"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BHHH 100-1"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BFFF 300"}), (r:RequirementGroup {id: "REQ-ELECTIVE-1-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "CSBB 100"}), (r:RequirementGroup {id: "REQ-CONCENTRATION-2-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BGGG 100"}), (r:RequirementGroup {id: "REQ-CONCENTRATION-2-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);

MATCH (c:Course {id: "BOOO 300-8"}), (r:RequirementGroup {id: "REQ-CONCENTRATION-2-BA-Biology-2"})
CREATE (c)-[:FULFILLS]->(r);
