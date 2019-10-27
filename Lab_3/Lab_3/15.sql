SELECT n_name, strftime('%Y',o_orderdate), COUNT(o_orderpriority)
FROM nation, orders, supplier, lineitem
WHERE o_orderpriority='3-MEDIUM' AND o_orderkey=l_orderkey AND l_suppkey = s_suppkey AND s_nationkey=n_nationkey
GROUP BY n_name, strftime('%Y',o_orderdate)