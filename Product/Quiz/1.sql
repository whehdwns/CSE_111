--Find the makers of laptops with hd less than 50 gigabytes
SELECT pr_maker
FROM PRODUCT, Laptop
WHERE pr_model = l_model AND l_hd < 50