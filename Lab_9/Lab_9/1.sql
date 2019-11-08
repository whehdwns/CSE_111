SELECT c_name, ROUND(SUM(o_totalprice),2), n_name
FROM Q1, nation, orders
WHERE c_nationkey=n_nationkey AND n_name='FRANCE' AND o_custkey=c_custkey
GROUP BY c_custkey