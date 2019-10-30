SELECT COUNT(DISTINCT c_custkey)
FROM customer, orders
WHERE c_custkey IN (
SELECT c_custkey
FROM customer, orders
WHERE c_custkey=o_custkey AND o_orderdate BETWEEN '1995-08-01' AND '1995-08-31'
GROUP BY c_custkey
HAVING COUNT(*) <=2)