SELECT s_region, c_region, CAST(SUM(l_extendedprice) AS INT)
FROM Q1, Q2, lineitem, orders
WHERE l_suppkey=s_suppkey AND l_orderkey = o_orderkey AND o_custkey =c_custkey
GROUP BY s_region, c_region
