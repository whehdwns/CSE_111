SELECT  COUNT(DISTINCT o_orderkey)
FROM orders, Q151, Q152, lineitem
WHERE o_orderkey = l_orderkey AND o_custkey=c_custkey AND 
    l_suppkey NOT IN (
        SELECT s_suppkey 
        FROM Q152
    )
