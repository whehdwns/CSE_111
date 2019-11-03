--What makers produces PCs and Printers but do not produce Laptops
--version 1
SELECT pr_maker
FROM PRODUCT
WHERE pr_type='pc' AND pr_type='printer'
EXCEPT
SELECT pr_maker
FROM PRODUCT
WHERE pr_type='laptop'
/*

version 2 (not sure this one is correct)
SELECT pr_maker
FROM PRODUCT
WHERE pr_type IN ('pc', 'printer') AND pr_type NOT IN('laptop')*/
