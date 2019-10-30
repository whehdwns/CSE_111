SELECT s_name, c_name
FROM supplier, customer, orders, lineitem
WHERE s_suppkey = l_suppkey AND l_orderkey = o_orderkey AND o_custkey = c_custkey AND o_totalprice IN (SELECT MAX(o_totalprice) FROM orders WHERE o_orderstatus='F' ORDER BY o_totalprice DESC)