SELECT n_name, COUNT(s_suppkey), AVG(s_acctbal)
FROM nation, supplier_noindex
WHERE n_nationkey=s_nationkey
GROUP BY n_name
HAVING COUNT(s_suppkey) >=5
--[20:14:39] Query finished in 0.002 second(s).