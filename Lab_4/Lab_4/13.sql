SELECT COUNT(DISTINCT o_orderkey)
FROM orders, nation, region, supplier, lineitem, customer
/*supplier*/
WHERE o_orderkey= l_orderkey AND l_suppkey=s_suppkey AND s_nationkey=n_nationkey AND n_regionkey=r_regionkey AND r_name='EUROPE' 
 /*customer*/
AND o_custkey=c_custkey AND c_nationkey =(SELECT c_nationkey FROM customer, nation WHERE c_nationkey=n_nationkey AND n_name='CANADA')


