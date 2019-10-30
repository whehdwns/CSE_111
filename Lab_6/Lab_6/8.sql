SELECT COUNT(DISTINCT c_custkey)
FROM customer, orders
WHERE c_custkey =o_custkey AND o_orderkey NOT IN(
    SELECT DISTINCT o_orderkey
    FROM orders, supplier, lineitem
    WHERE o_orderkey = l_orderkey AND l_suppkey=s_suppkey AND s_nationkey NOT IN (
        SELECT s_nationkey
        FROM supplier, nation, region
        WHERE s_nationkey=n_nationkey AND n_regionkey= r_regionkey AND r_name IN ('ASIA')
    )
)