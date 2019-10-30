SELECT n_name
FROM nation, customer, orders
WHERE n_nationkey=c_nationkey AND c_custkey=o_custkey 
GROUP BY n_name
HAVING COUNT(o_totalprice) =(
    SELECT COUNT(o_totalprice) 
    FROM orders, nation, customer 
    WHERE o_custkey=c_custkey AND c_nationkey = n_nationkey 
    GROUP BY n_name 
    ORDER BY COUNT(*) DESC LIMIT 1)