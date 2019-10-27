SELECT n_name, COUNT(o_orderkey)
FROM region, orders, customer,nation
WHERE o_custkey=c_custkey AND c_nationkey=n_nationkey AND n_regionkey=r_regionkey AND r_name='EUROPE'
GROUP BY n_name