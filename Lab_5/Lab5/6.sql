SELECT p_mfgr
FROM part, supplier, partsupp
WHERE p_partkey=ps_partkey AND ps_suppkey =s_suppkey AND s_name='Supplier#000000053'
AND ps_availqty =(SELECT MIN(ps_availqty) FROM partsupp, supplier WHERE s_suppkey=ps_suppkey AND s_name='Supplier#000000053')