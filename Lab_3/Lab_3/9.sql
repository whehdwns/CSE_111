SELECT n_name, COUNT(s_suppkey), AVG(s_acctbal)
FROM nation, supplier
WHERE n_nationkey=s_nationkey
GROUP BY n_name
HAVING COUNT(s_suppkey) >=5