SELECT p_mfgr, o_orderpriority, COUNT(p_partkey)
FROM part, orders, lineitem
WHERE p_partkey=l_partkey AND l_orderkey=o_orderkey 
GROUP BY p_mfgr, o_orderpriority