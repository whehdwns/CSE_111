SELECT o_orderpriority, COUNT(o_orderkey)
FROM orders, lineitem
WHERE l_orderkey=o_orderkey AND o_orderdate BETWEEN '1996-01-01' AND '1996-12-31' AND julianday(l_receiptdate) < julianday(l_commitdate)
GROUP BY o_orderpriority