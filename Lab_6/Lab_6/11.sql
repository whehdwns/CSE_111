--Reference : https://nifannn.github.io/2017/10/25/SQL-Notes-Leetcode-586-Customer-Placing-the-Largest-Number-of-Orders/

SELECT n_name
FROM nation, customer
WHERE n_nationkey=c_nationkey
GROUP BY n_name
HAVING COUNT(c_custkey) = (
    SELECT COUNT(c_custkey) 
    FROM customer, nation 
    WHERE c_nationkey= n_nationkey 
    GROUP BY n_name 
    ORDER BY COUNT(*) DESC LIMIT 1)


