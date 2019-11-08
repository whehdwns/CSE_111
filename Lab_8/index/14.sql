SELECT COUNT(o_orderpriority)
FROM orders_index, customer_index, nation
WHERE o_orderpriority='1-URGENT' AND o_custkey=c_custkey AND c_nationkey=n_nationkey AND n_name='BRAZIL' AND o_orderdate BETWEEN '1994-01-01' AND '1997-12-31'
--[20:06:45] Query finished in 0.018 second(s).