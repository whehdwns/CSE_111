SELECT ROUND(SUM(ps_supplycost),2)
FROM partsupp, part
WHERE ps_partkey= p_partkey AND p_retailprice < 1000
AND ps_partkey IN (SELECT ps_partkey FROM partsupp, lineitem WHERE  ps_partkey=l_partkey AND l_shipdate BETWEEN '1996-01-01' AND '1996-12-31')
AND ps_suppkey NOT IN (SELECT ps_suppkey FROM partsupp, part, lineitem WHERE ps_partkey= p_partkey AND p_partkey= l_partkey AND ps_suppkey = l_suppkey AND l_extendedprice < 1000 AND l_shipdate BETWEEN '1995-01-01' AND '1995-12-31')

