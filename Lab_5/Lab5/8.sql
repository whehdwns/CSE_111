SELECT COUNT(DISTINCT s_suppkey)
FROM supplier, part,lineitem
WHERE s_suppkey=l_suppkey AND l_partkey=p_partkey AND p_type LIKE '%MEDIUM POLISHED%' AND p_size IN (3,23,26,49)