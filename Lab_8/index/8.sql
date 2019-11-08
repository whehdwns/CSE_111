SELECT s_name, s_acctbal
FROM supplier_index, nation, region
WHERE s_acctbal > '1000.0' AND s_nationkey=n_nationkey AND n_regionkey=r_regionkey AND r_name='ASIA'
--[20:04:03] Query finished in 0.008 second(s).