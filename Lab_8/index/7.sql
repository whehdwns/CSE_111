SELECT l_receiptdate, COUNT(l_receiptdate)
FROM lineitem_index, orders_index, customer_index
WHERE c_name= 'Customer#000000118' AND c_custkey=o_custkey AND o_orderkey=l_orderkey
GROUP BY l_receiptdate
--[20:03:24] Query finished in 0.163 second(s).