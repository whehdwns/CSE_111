--What makers produce a single laptop model and exactly two PC models
SELECT pr_maker
FROM PRODUCT, Laptop
WHERE pr_model = l_model
GROUP BY pr_maker
HAVING COUNT(l_model)=1
INTERSECT
SELECT pr_maker
FROM PRODUCT, PC
WHERE pr_model= pc_model
GROUP BY pr_maker
HAVING COUNT(pc_model)=2