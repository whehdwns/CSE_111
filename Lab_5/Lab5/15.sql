--SELECT SUM(l_extendedprice*(1-l_discount)) / (SELECT SUM(l_extendedprice*(1-l_discount)))
--FROM lineitem, supplier, region, nation n1, nation n2
--WHERE l_suppkey =s_suppkey AND s_nationkey=n1.n_nationkey AND n1.n_regionkey=r_regionkey AND r_name='EUROPE' AND l_shipdate BETWEEN '1996-01-01' AND '1996-12-31'


SELECT (SELECT sum(l_extendedprice*(1-l_discount)) 
        FROM lineitem,orders,customer,nation n1,nation n2,region r1,supplier
        WHERE l_orderkey = o_orderkey and o_custkey = c_custkey and c_nationkey = n1.n_nationkey and n1.n_regionkey = r1.r_regionkey and r1.r_name = 'EUROPE' 
        and l_suppkey = s_suppkey and s_nationkey = n2.n_nationkey and n2.n_name = 'UNITED STATES' and l_shipdate BETWEEN '1996-01-01' AND '1996-12-31')
/
        (SELECT sum(l_extendedprice*(1-l_discount)) 
        FROM lineitem,orders,customer,nation n1,region r1
        WHERE l_orderkey = o_orderkey and o_custkey = c_custkey and c_nationkey = n1.n_nationkey and n1.n_regionkey = r1.r_regionkey and r1.r_name = 'EUROPE' 
        and l_shipdate BETWEEN '1996-01-01' AND '1996-12-31')

