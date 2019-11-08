SELECT COUNT(DISTINCT c_custkey)
FROM customer_noindex, lineitem_noindex, orders_noindex
WHERE c_custkey=o_custkey AND o_orderkey=l_orderkey AND l_discount >'0.04'
--[20:16:05] Query finished in 0.109 second(s).