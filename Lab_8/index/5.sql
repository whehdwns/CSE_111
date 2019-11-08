SELECT MIN(c_acctbal), MAX(c_acctbal)
FROM customer_index
WHERE c_mktsegment='BUILDING'
--[20:02:08] Query finished in 0.002 second(s).