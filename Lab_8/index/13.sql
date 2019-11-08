SELECT AVG(c_acctbal)
FROM customer_index, nation, region
WHERE c_mktsegment='MACHINERY' AND c_nationkey=n_nationkey AND n_regionkey=r_regionkey AND r_name='EUROPE' 
--[20:06:09] Query finished in 0.002 second(s).