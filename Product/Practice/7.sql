--What makers produce exactly a single Laptop model
SELECT pr_maker
FROM PRODUCT, Laptop
WHERE pr_model = l_model
GROUP BY pr_maker
HAVING COUNT(l_model)=1