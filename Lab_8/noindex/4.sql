SELECT MAX(julianday(l_shipdate) - julianday(l_commitdate))
FROM lineitem_noindex
--[20:12:47] Query finished in 0.043 second(s).