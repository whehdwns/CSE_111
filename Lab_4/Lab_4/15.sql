SELECT  COUNT(DISTINCT o_orderkey)
FROM orders, customer, supplier, lineitem
WHERE o_orderkey = l_orderkey AND l_suppkey=s_suppkey AND s_acctbal >0 AND o_custkey=c_custkey AND c_acctbal <0
