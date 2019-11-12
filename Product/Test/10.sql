--Find the makers that produce at least 5 different products out of which
--there is at least one product of each type (i.e., PC, Laptop, and Printer).
SELECT pr_maker 
FROM PRODUCT
WHERE pr_maker IN (SELECT pr_maker FROM PRODUCT WHERE pr_type='pc'
                   INTERSECT
                   SELECT pr_maker FROM PRODUCT WHERE pr_type='laptop'
                   INTERSECT
                   SELECT pr_maker FROM PRODUCT WHERE pr_type='printer'
                   )
GROUP BY pr_maker
HAVING COUNT(pr_model) >=5