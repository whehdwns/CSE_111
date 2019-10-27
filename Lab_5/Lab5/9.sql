SELECT COUNT(ps_suppkey)
FROM partsupp, supplier, nation
WHERE ps_suppkey=s_suppkey AND s_nationkey=n_nationkey AND n_name='CANADA'
AND ps_supplycost*ps_availqty IN (SELECT ps_supplycost*ps_availqty FROM partsupp ORDER BY ps_supplycost*ps_availqty DESC LIMIT(SELECT COUNT(*)*0.03 FROM partsupp ORDER BY ps_supplycost*ps_availqty))