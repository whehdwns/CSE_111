--Region: AFRICA/ AMERICA/ ASIA/ EUROPE/ MIDDLE EAST
SELECT r_name, COUNT(DISTINCT s_name)
FROM region, supplier,nation
WHERE s_nationkey=n_nationkey AND n_regionkey =r_regionkey AND r_name='AFRICA'
AND s_acctbal > (SELECT AVG(DISTINCT s_acctbal) FROM supplier,nation, region WHERE s_nationkey=n_nationkey AND n_regionkey =r_regionkey AND r_name='AFRICA' GROUP BY r_name)
UNION
SELECT r_name, COUNT(DISTINCT s_name)
FROM region, supplier,nation
WHERE s_nationkey=n_nationkey AND n_regionkey =r_regionkey AND r_name='AMERICA'
AND s_acctbal > (SELECT AVG(DISTINCT s_acctbal) FROM supplier,nation, region WHERE s_nationkey=n_nationkey AND n_regionkey =r_regionkey AND r_name='AMERICA' GROUP BY r_name)
UNION
SELECT r_name, COUNT(DISTINCT s_name)
FROM region, supplier,nation
WHERE s_nationkey=n_nationkey AND n_regionkey =r_regionkey AND r_name='ASIA'
AND s_acctbal > (SELECT AVG(DISTINCT s_acctbal) FROM supplier,nation, region WHERE s_nationkey=n_nationkey AND n_regionkey =r_regionkey AND r_name='ASIA' GROUP BY r_name)
UNION
SELECT r_name, COUNT(DISTINCT s_name)
FROM region, supplier,nation
WHERE s_nationkey=n_nationkey AND n_regionkey =r_regionkey AND r_name='EUROPE'
AND s_acctbal > (SELECT AVG(DISTINCT s_acctbal) FROM supplier,nation, region WHERE s_nationkey=n_nationkey AND n_regionkey =r_regionkey AND r_name='EUROPE' GROUP BY r_name)
UNION
SELECT r_name, COUNT(DISTINCT s_name)
FROM region, supplier,nation
WHERE s_nationkey=n_nationkey AND n_regionkey =r_regionkey AND r_name='MIDDLE EAST'
AND s_acctbal > (SELECT AVG(DISTINCT s_acctbal) FROM supplier,nation, region WHERE s_nationkey=n_nationkey AND n_regionkey =r_regionkey AND r_name='MIDDLE EAST' GROUP BY r_name)
GROUP BY r_name



