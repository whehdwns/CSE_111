SELECT r_name, s_name
FROM nation, region, supplier
WHERE s_nationkey=n_nationkey AND n_regionkey=r_regionkey
GROUP BY r_name
HAVING MAX(s_acctbal)