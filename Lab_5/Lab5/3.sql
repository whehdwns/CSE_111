SELECT MAX(l_discount)
FROM lineitem, orders
WHERE l_orderkey=o_orderkey AND o_orderdate BETWEEN '1995-05-01' AND '1995-05-31'
AND l_discount < (SELECT AVG(l_discount) FROM lineitem, orders WHERE l_orderkey=o_orderkey)