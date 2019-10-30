SELECT DISTINCT p_name
FROM part, nation, region, orders, customer, lineitem
WHERE  p_name IN(
    SELECT p_name
    FROM part, supplier, nation, region,partsupp
    WHERE r_name='ASIA' AND r_regionkey=n_regionkey AND n_nationkey=s_nationkey AND s_suppkey=ps_suppkey AND ps_partkey=p_partkey
    GROUP BY p_name
    HAVING COUNT(DISTINCT s_suppkey) = 4
) AND r_name='AMERICA' AND r_regionkey=n_regionkey AND n_nationkey=c_nationkey AND c_custkey= o_custkey AND o_orderkey = l_orderkey AND l_partkey = p_partkey
ORDER BY p_name ASC