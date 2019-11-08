SELECT DISTINCT n_name
FROM nation, customer_noindex, orders_noindex
WHERE c_nationkey=n_nationkey AND c_custkey=o_custkey AND o_orderdate BETWEEN '1996-12-00' AND '1996-12-31' 
--[20:13:30] Query finished in 0.009 second(s).