SELECT c_nation, o_orderstatus, COUNT(o_orderkey)
FROM Q1, Q5
WHERE o_custkey=c_custkey AND c_region='ASIA'
GROUP BY c_nation, o_orderstatus
