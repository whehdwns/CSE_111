SELECT n_name, strftime('%Y',o_orderdate), COUNT(o_orderpriority)
FROM nation, orders_index, supplier_index, lineitem_index
WHERE o_orderpriority='3-MEDIUM' AND o_orderkey=l_orderkey AND l_suppkey = s_suppkey AND s_nationkey=n_nationkey
GROUP BY n_name, strftime('%Y',o_orderdate)
--[20:07:11] Query finished in 0.128 second(s).