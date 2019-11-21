SELECT s_nation, COUNT(DISTINCT o_orderkey)
FROM Q2, Q5, lineitem
WHERE o_orderkey=l_orderkey AND l_suppkey=s_suppkey
AND s_region='AMERICA' AND o_orderstatus='F' AND o_orderyear = '1995'
GROUP BY s_nation
