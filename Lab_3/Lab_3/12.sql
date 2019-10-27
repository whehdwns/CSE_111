SELECT r_name, COUNT(o_orderkey)
FROM region, nation, orders, customer
WHERE o_orderstatus='F' AND o_custkey=c_custkey AND c_nationkey = n_nationkey AND n_regionkey=r_regionkey
GROUP BY r_name
ORDER BY COUNT(o_orderkey) DESC