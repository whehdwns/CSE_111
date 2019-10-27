SELECT DISTINCT n_name
FROM nation, customer, orders
WHERE c_nationkey=n_nationkey AND c_custkey=o_custkey AND o_orderdate BETWEEN '1996-12-00' AND '1996-12-31' 