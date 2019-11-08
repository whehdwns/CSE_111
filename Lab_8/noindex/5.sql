SELECT MIN(c_acctbal), MAX(c_acctbal)
FROM customer_noindex
WHERE c_mktsegment='BUILDING'
--[20:13:06] Query finished in 0.002 second(s).