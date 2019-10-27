SELECT n_name, COUNT(DISTINCT c_name), COUNT(DISTINCT s_name)
FROM nation, region, supplier, customer
WHERE c_nationkey=n_nationkey AND s_nationkey=n_nationkey AND n_regionkey=r_regionkey AND r_name='EUROPE'
GROUP BY n_name