SELECT COUNT(DISTINCT s_suppkey)
FROM supplier
WHERE s_suppkey IN (
SELECT s_suppkey
FROM supplier, part,partsupp
WHERE s_suppkey=ps_suppkey AND ps_partkey =p_partkey AND p_retailprice IN (SELECT MIN(p_retailprice) FROM part)
GROUP BY s_suppkey)