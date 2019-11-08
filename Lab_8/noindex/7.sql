SELECT l_receiptdate, COUNT(l_receiptdate)
FROM lineitem_noindex, orders_noindex, customer_noindex
WHERE c_name= 'Customer#000000118' AND c_custkey=o_custkey AND o_orderkey=l_orderkey
GROUP BY l_receiptdate
--[20:13:59] Query finished in 0.115 second(s).