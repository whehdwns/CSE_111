SELECT SUM(o_totalprice)
FROM customer_index, orders_index, nation, region
WHERE c_custkey=o_custkey AND c_nationkey=n_nationkey AND n_regionkey=r_regionkey AND r_name = 'EUROPE' AND o_orderdate BETWEEN '1996-01-01' AND '1996-12-31' 
--[20:04:50] Query finished in 0.019 second(s).