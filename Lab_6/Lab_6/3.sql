SELECT COUNT(DISTINCT ps_partkey)
FROM partsupp, supplier, nation
WHERE ps_partkey IN (
SELECT ps_partkey
FROM partsupp, supplier, nation
WHERE ps_suppkey = s_suppkey AND s_nationkey =n_nationkey AND n_name='CANADA'
GROUP BY ps_partkey
HAVING COUNT(s_suppkey) > 1)