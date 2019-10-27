SELECT DISTINCT s_name, COUNT(p_size)
FROM supplier, part, nation, partsupp
WHERE s_nationkey=n_nationkey AND n_name='BRAZIL' AND p_size < '20' AND s_suppkey=ps_suppkey AND ps_partkey=p_partkey
GROUP BY s_name