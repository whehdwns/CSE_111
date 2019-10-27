SELECT o_orderpriority, COUNT(DISTINCT o_orderkey)
FROM orders, lineitem
WHERE o_orderkey=l_orderkey AND o_orderdate BETWEEN '1996-10-01' AND '1996-12-31' AND julianday (l_receiptdate)> julianday (l_commitdate)
GROUP BY o_orderpriority
ORDER BY o_orderpriority ASC