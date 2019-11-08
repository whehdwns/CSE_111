SELECT l_quantity, l_extendedprice
FROM lineitem_index
WHERE l_returnflag ='N' AND l_shipdate ='1995-09-25'
--[20:01:21] Query finished in 0.010 second(s).