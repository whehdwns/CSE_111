SELECT COUNT(DISTINCT s_suppkey )
FROM supplier
WHERE s_suppkey IN (
SELECT s_suppkey
FROM supplier, nation, partsupp
WHERE s_suppkey=ps_suppkey AND s_nationkey = n_nationkey AND n_name='CANADA' 
GROUP BY s_suppkey
HAVING COUNT(DISTINCT ps_partkey) >=4 )