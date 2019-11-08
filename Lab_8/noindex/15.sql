SELECT n_name, strftime('%Y',o_orderdate), COUNT(o_orderpriority)
FROM nation, orders_noindex, supplier_noindex, lineitem_noindex
WHERE o_orderpriority='3-MEDIUM' AND o_orderkey=l_orderkey AND l_suppkey = s_suppkey AND s_nationkey=n_nationkey
GROUP BY n_name, strftime('%Y',o_orderdate)
--[20:17:52] Query finished in 0.114 second(s).