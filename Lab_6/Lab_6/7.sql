SELECT COUNT(s_suppkey)
FROM supplier
WHERE s_suppkey IN (
    SELECT s_suppkey
    FROM supplier, orders, lineitem, nation, customer
    WHERE s_suppkey = l_suppkey AND l_orderkey = o_orderkey AND o_custkey=c_custkey AND c_nationkey= n_nationkey AND n_name IN ('GERMANY', 'FRANCE')
    GROUP BY s_suppkey
    HAVING COUNT(DISTINCT o_orderkey) < 30
)



