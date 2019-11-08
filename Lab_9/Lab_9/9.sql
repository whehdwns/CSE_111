SELECT COUNT(DISTINCT o_clerk)
FROM Q5, Q2, nation, lineitem
WHERE o_orderkey=l_orderkey AND l_suppkey=s_suppkey AND s_nationkey=n_nationkey AND n_name='RUSSIA'