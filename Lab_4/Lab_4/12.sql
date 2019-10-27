SELECT r_name, MAX(s_acctbal)
FROM nation, region, supplier
WHERE s_nationkey=n_nationkey AND n_regionkey=r_regionkey 
GROUP BY r_name