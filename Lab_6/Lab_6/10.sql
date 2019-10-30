SELECT r_name
FROM region, customer, nation, lineitem, orders, supplier
WHERE c_custkey=o_custkey AND o_orderkey=l_orderkey AND l_suppkey=s_suppkey AND s_nationkey=n_nationkey AND n_regionkey=r_regionkey 
GROUP BY r_name
ORDER BY SUM(l_extendedprice) DESC LIMIT 1
