SELECT n_name, COUNT(s_suppkey), AVG(s_acctbal)
FROM nation, supplier_index
WHERE n_nationkey=s_nationkey
GROUP BY n_name
HAVING COUNT(s_suppkey) >=5
--[20:04:27] Query finished in 0.001 second(s).