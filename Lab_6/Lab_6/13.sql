SELECT n_name
FROM nation, lineitem, supplier
WHERE n_nationkey=s_nationkey AND s_suppkey=l_suppkey AND l_shipdate BETWEEN '1996-01-01' AND '1996-12-31'
GROUP BY n_name
ORDER BY SUM(l_extendedprice) DESC LIMIT 1
