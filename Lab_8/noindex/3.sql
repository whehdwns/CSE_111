SELECT l_quantity, l_extendedprice
FROM lineitem_noindex
WHERE l_returnflag ='N' AND l_shipdate ='1995-09-25'
--[20:12:27] Query finished in 0.018 second(s).