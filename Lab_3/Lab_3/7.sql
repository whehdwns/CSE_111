SELECT l_receiptdate, COUNT(l_receiptdate)
FROM lineitem, orders, customer
WHERE c_name= 'Customer#000000118' AND c_custkey=o_custkey AND o_orderkey=l_orderkey
GROUP BY l_receiptdate