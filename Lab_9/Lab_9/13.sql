SELECT COUNT(DISTINCT o_orderkey)
FROM orders, Q2, lineitem, Q1
/*supplier*/
WHERE o_orderkey= l_orderkey AND l_suppkey=s_suppkey AND s_region='EUROPE' 
 /*customer*/
AND o_custkey=c_custkey AND c_nation =(SELECT c_nation FROM Q1 WHERE  c_nation='CANADA')


