--n1,r1 for supplying region
--n2,r2 for customer region
SELECT r1.r_name, r2.r_name,  strftime('%Y',l_shipdate), ROUND(SUM(l_extendedprice*(1-l_discount)),4)
FROM region r1, region r2, nation n1,nation n2, lineitem, customer,orders, supplier
WHERE l_suppkey=s_suppkey AND s_nationkey=n1.n_nationkey AND n1.n_regionkey =r1.r_regionkey 
AND l_orderkey=o_orderkey AND o_custkey=c_custkey AND c_nationkey=n2.n_nationkey AND n2.n_regionkey=r2.r_regionkey AND l_shipdate BETWEEN '1995-01-01' AND '1996-12-31'
GROUP BY r1.r_name, r2.r_name, strftime('%Y',l_shipdate)
ORDER BY r1.r_name, r2.r_name, strftime('%Y',l_shipdate) ASC