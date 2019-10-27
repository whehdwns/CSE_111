SELECT n_name, COUNT(s_suppkey)
FROM nation, supplier
WHERE s_nationkey=n_nationkey
GROUP BY n_name