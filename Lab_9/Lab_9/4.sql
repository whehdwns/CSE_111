SELECT s_name, COUNT(p_name)
FROM Q2, part, partsupp
WHERE p_partkey = ps_partkey
    AND s_suppkey = ps_suppkey
    AND p_size < 20
    AND s_nation = 'BRAZIL'
GROUP BY s_name
