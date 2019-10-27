SELECT s_name, p_size, MIN(ps_supplycost)
FROM supplier, part, partsupp, nation, region
WHERE s_nationkey=n_nationkey AND n_regionkey=r_regionkey AND r_name='AMERICA' AND s_suppkey=ps_suppkey  AND p_partkey=ps_partkey AND p_type LIKE '%STEEL%'
GROUP BY p_size
ORDER BY s_name
