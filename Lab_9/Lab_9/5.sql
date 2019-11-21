SELECT c_name, COUNT(o_orderkey)
FROM Q1, Q5
WHERE o_custkey=c_custkey AND c_nation='GERMANY' AND o_orderyear = '1995'
GROUP BY c_name
