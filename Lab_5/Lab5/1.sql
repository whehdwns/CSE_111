SELECT COUNT(c_name)
FROM customer,nation,region
WHERE c_nationkey=n_nationkey AND n_regionkey=r_regionkey AND NOT r_name='EUROPE' AND NOT r_name='AFRICA'