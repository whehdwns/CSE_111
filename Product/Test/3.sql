--How many makers produce each type of product?
SELECT pr_type, COUNT(DISTINCT pr_maker)
FROM PRODUCT
GROUP BY pr_type