--Find the makers of laptops
SELECT pr_maker
FROM PRODUCT, Laptop
WHERE pr_model= l_model AND pr_maker= 'laptop'