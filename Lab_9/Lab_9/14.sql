--n1,r1 for supplying region
--n2,r2 for customer region
SELECT r1.r_name, r2.r_name, CAST(SUM(l_extendedprice) AS INT)
FROM region r1, region r2, nation n1,nation n2, lineitem, Q2, Q1, orders
WHERE l_suppkey=s_suppkey AND s_nationkey=n1.n_nationkey AND n1.n_regionkey=r1.r_regionkey
AND l_orderkey=o_orderkey AND o_custkey=c_custkey AND c_nationkey=n2.n_nationkey AND n2.n_regionkey = r2.r_regionkey
GROUP BY r1.r_name, r2.r_name