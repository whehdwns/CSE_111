SELECT MAX(julianday(l_shipdate) - julianday(l_commitdate))
FROM lineitem_index
--[20:01:42] Query finished in 0.044 second(s).