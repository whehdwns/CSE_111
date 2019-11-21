SELECT c_name, ROUND(SUM(o_totalprice),2), c_nation
FROM Q1, orders
WHERE c_nation='FRANCE' AND o_custkey=c_custkey
GROUP BY c_custkey
