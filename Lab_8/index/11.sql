SELECT COUNT(DISTINCT c_custkey)
FROM customer_index, lineitem_index, orders_index
WHERE c_custkey=o_custkey AND o_orderkey=l_orderkey AND l_discount >'0.04'
--[20:05:19] Query finished in 0.174 second(s).