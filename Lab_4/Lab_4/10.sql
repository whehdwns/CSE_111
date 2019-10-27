SELECT p_type, MAX(l_discount)
FROM part, lineitem
WHERE l_partkey =p_partkey AND p_type LIKE '%ECONOMY%'
GROUP BY p_type