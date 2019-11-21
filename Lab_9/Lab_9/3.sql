SELECT c_nation, COUNT(o_orderkey)
FROM orders, Q1
WHERE o_custkey=c_custkey AND c_region='EUROPE'
GROUP BY c_nation
