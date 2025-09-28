
MATCH (f:Faculty {id: "F01020"}), (c:Course {id: "CSRR 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSRR 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01022"}), (c:Course {id: "CSLL 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01013"}), (c:Course {id: "CSLL 100"})
CREATE (f)-[:TEACHES {terms: ["Summer"]}]->(c);

MATCH (f:Faculty {id: "F01019"}), (c:Course {id: "CSTT 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSTT 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01007"}), (c:Course {id: "CSQQ 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01020"}), (c:Course {id: "CSQQ 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSOO 300"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSOO 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01020"}), (c:Course {id: "CSBB 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01021"}), (c:Course {id: "CSBB 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01007"}), (c:Course {id: "CSYY 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01019"}), (c:Course {id: "CSAA 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01013"}), (c:Course {id: "CSAA 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01014"}), (c:Course {id: "CSVV 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01007"}), (c:Course {id: "CSVV 400"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01003"}), (c:Course {id: "CSFF 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01007"}), (c:Course {id: "CSCC 200"})
CREATE (f)-[:TEACHES {terms: ["Summer"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSCC 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01003"}), (c:Course {id: "CSPP 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01014"}), (c:Course {id: "CSPP 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01022"}), (c:Course {id: "CSPP 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSRR 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01001"}), (c:Course {id: "CSFF 300-7"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01013"}), (c:Course {id: "CSQQ 300"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01009"}), (c:Course {id: "CSQQ 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01020"}), (c:Course {id: "CSQQ 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01022"}), (c:Course {id: "CSOO 200"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01013"}), (c:Course {id: "CSOO 200"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01001"}), (c:Course {id: "CSNN 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01019"}), (c:Course {id: "CSNN 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSGG 200"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01003"}), (c:Course {id: "CSHH 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSHH 100"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01017"}), (c:Course {id: "CSHH 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01028"}), (c:Course {id: "CSVV 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSVV 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01022"}), (c:Course {id: "CSVV 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSKK 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSKK 400"})
CREATE (f)-[:TEACHES {terms: ["Summer"]}]->(c);

MATCH (f:Faculty {id: "F01009"}), (c:Course {id: "CSKK 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSWW 200"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSWW 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSDD 100"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSDD 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSDD 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSDD 100-1"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSDD 100-1"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01022"}), (c:Course {id: "CSDD 100-1"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01022"}), (c:Course {id: "CSBB 100-9"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01028"}), (c:Course {id: "CSBB 100-9"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSBB 100-9"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01021"}), (c:Course {id: "CSSS 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01017"}), (c:Course {id: "CSWW 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01007"}), (c:Course {id: "CSWW 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01020"}), (c:Course {id: "CSWW 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01020"}), (c:Course {id: "CSYY 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01028"}), (c:Course {id: "CSYY 200"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01003"}), (c:Course {id: "CSYY 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01014"}), (c:Course {id: "CSQQ 200"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01017"}), (c:Course {id: "CSQQ 200"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSQQ 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSXX 400"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01028"}), (c:Course {id: "CSZZ 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSZZ 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSZZ 200"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSAA 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01019"}), (c:Course {id: "CSXX 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01007"}), (c:Course {id: "CSXX 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSRR 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01019"}), (c:Course {id: "CSRR 200"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01001"}), (c:Course {id: "CSFF 300-3"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSFF 300-3"})
CREATE (f)-[:TEACHES {terms: ["Summer"]}]->(c);

MATCH (f:Faculty {id: "F01017"}), (c:Course {id: "CSNN 200"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSNN 200"})
CREATE (f)-[:TEACHES {terms: ["Summer"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSQQ 300-1"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01001"}), (c:Course {id: "CSQQ 300-1"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSZZ 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSFF 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSFF 200-6"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSII 200"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01013"}), (c:Course {id: "CSII 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01024"}), (c:Course {id: "CSRR 200-5"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01017"}), (c:Course {id: "CSWW 400"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSWW 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01021"}), (c:Course {id: "CSGG 200-9"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01007"}), (c:Course {id: "CSDD 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSDD 400"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01020"}), (c:Course {id: "CSDD 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01009"}), (c:Course {id: "CSOO 200-6"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01028"}), (c:Course {id: "CSOO 200-6"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01022"}), (c:Course {id: "CSQQ 200-5"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01022"}), (c:Course {id: "CSXX 200"})
CREATE (f)-[:TEACHES {terms: ["Summer"]}]->(c);

MATCH (f:Faculty {id: "F01028"}), (c:Course {id: "CSXX 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01015"}), (c:Course {id: "CSJJ 400"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01028"}), (c:Course {id: "CSJJ 400"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01007"}), (c:Course {id: "CSJJ 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01012"}), (c:Course {id: "CSRR 200-3"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01014"}), (c:Course {id: "CSRR 200-3"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01004"}), (c:Course {id: "BOOO 100"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01010"}), (c:Course {id: "BOOO 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01025"}), (c:Course {id: "BOOO 100"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01023"}), (c:Course {id: "BOOO 400"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01030"}), (c:Course {id: "BOOO 400"})
CREATE (f)-[:TEACHES {terms: ["Summer"]}]->(c);

MATCH (f:Faculty {id: "F01011"}), (c:Course {id: "BOOO 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01027"}), (c:Course {id: "BGGG 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01027"}), (c:Course {id: "BRRR 100"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01026"}), (c:Course {id: "BRRR 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01010"}), (c:Course {id: "BRRR 100"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01030"}), (c:Course {id: "BJJJ 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01025"}), (c:Course {id: "BJJJ 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01011"}), (c:Course {id: "BBBB 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01026"}), (c:Course {id: "BBBB 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01008"}), (c:Course {id: "BBBB 100"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01026"}), (c:Course {id: "BQQQ 200"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01005"}), (c:Course {id: "BQQQ 200"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01006"}), (c:Course {id: "BQQQ 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01025"}), (c:Course {id: "BXXX 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01030"}), (c:Course {id: "BEEE 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01016"}), (c:Course {id: "BGGG 200-8"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01026"}), (c:Course {id: "BGGG 200-8"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01018"}), (c:Course {id: "BGGG 200-8"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01002"}), (c:Course {id: "BOOO 300"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01026"}), (c:Course {id: "BMMM 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01006"}), (c:Course {id: "BMMM 300"})
CREATE (f)-[:TEACHES {terms: ["Summer"]}]->(c);

MATCH (f:Faculty {id: "F01010"}), (c:Course {id: "BMMM 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01004"}), (c:Course {id: "BGGG 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01011"}), (c:Course {id: "BGGG 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01029"}), (c:Course {id: "BTTT 400"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01025"}), (c:Course {id: "BFFF 100"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01010"}), (c:Course {id: "BFFF 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01023"}), (c:Course {id: "BFFF 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01016"}), (c:Course {id: "BLLL 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01018"}), (c:Course {id: "BLLL 300"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01026"}), (c:Course {id: "BLLL 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01026"}), (c:Course {id: "BUUU 200"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01018"}), (c:Course {id: "BUUU 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01005"}), (c:Course {id: "BUUU 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01026"}), (c:Course {id: "BXXX 100"})
CREATE (f)-[:TEACHES {terms: ["Summer"]}]->(c);

MATCH (f:Faculty {id: "F01011"}), (c:Course {id: "BJJJ 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01030"}), (c:Course {id: "BUUU 200-6"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01006"}), (c:Course {id: "BDDD 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01030"}), (c:Course {id: "BGGG 400"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01008"}), (c:Course {id: "BBBB 100-9"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01004"}), (c:Course {id: "BHHH 100-1"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01030"}), (c:Course {id: "BHHH 100-1"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01006"}), (c:Course {id: "BEEE 100-2"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01016"}), (c:Course {id: "BEEE 100-2"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01026"}), (c:Course {id: "BXXX 300"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01018"}), (c:Course {id: "BBBB 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01008"}), (c:Course {id: "BBBB 300"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01005"}), (c:Course {id: "BTTT 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01023"}), (c:Course {id: "BTTT 300"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01002"}), (c:Course {id: "BVVV 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01010"}), (c:Course {id: "BOOO 300-8"})
CREATE (f)-[:TEACHES {terms: ["Summer"]}]->(c);

MATCH (f:Faculty {id: "F01002"}), (c:Course {id: "BOOO 300-8"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01011"}), (c:Course {id: "BMMM 300-1"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01026"}), (c:Course {id: "BVVV 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01008"}), (c:Course {id: "BVVV 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01011"}), (c:Course {id: "BVVV 400"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01006"}), (c:Course {id: "BZZZ 200"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01011"}), (c:Course {id: "BZZZ 200"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01025"}), (c:Course {id: "BHHH 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01005"}), (c:Course {id: "BHHH 200-8"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01008"}), (c:Course {id: "BHHH 200-8"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01027"}), (c:Course {id: "BRRR 300"})
CREATE (f)-[:TEACHES {terms: ["Summer"]}]->(c);

MATCH (f:Faculty {id: "F01011"}), (c:Course {id: "BRRR 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01005"}), (c:Course {id: "BRRR 300"})
CREATE (f)-[:TEACHES {terms: ["Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01030"}), (c:Course {id: "BGGG 200-8-5"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01008"}), (c:Course {id: "BLLL 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01005"}), (c:Course {id: "BLLL 200"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01010"}), (c:Course {id: "BPPP 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01026"}), (c:Course {id: "BPPP 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01016"}), (c:Course {id: "BZZZ 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01023"}), (c:Course {id: "BZZZ 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01016"}), (c:Course {id: "BZZZ 200-6"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01018"}), (c:Course {id: "BNNN 200"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01030"}), (c:Course {id: "BNNN 200"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01008"}), (c:Course {id: "BNNN 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01023"}), (c:Course {id: "BAAA 300"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01005"}), (c:Course {id: "BAAA 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01027"}), (c:Course {id: "BWWW 400"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01006"}), (c:Course {id: "BWWW 400"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01018"}), (c:Course {id: "BWWW 400"})
CREATE (f)-[:TEACHES {terms: ["Spring"]}]->(c);

MATCH (f:Faculty {id: "F01018"}), (c:Course {id: "BFFF 300"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01010"}), (c:Course {id: "BFFF 300"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring", "Summer"]}]->(c);

MATCH (f:Faculty {id: "F01011"}), (c:Course {id: "BDDD 200"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01008"}), (c:Course {id: "BPPP 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01010"}), (c:Course {id: "BPPP 100"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01002"}), (c:Course {id: "BPPP 100"})
CREATE (f)-[:TEACHES {terms: ["Fall"]}]->(c);

MATCH (f:Faculty {id: "F01029"}), (c:Course {id: "BAAA 300-9"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);

MATCH (f:Faculty {id: "F01005"}), (c:Course {id: "BAAA 300-9"})
CREATE (f)-[:TEACHES {terms: ["Fall", "Spring"]}]->(c);
