--Find the makers of PCs with speed less than 3 who do not make any printers
SELECT pr_maker
FROM PRODUCT, PC
WHERE pr_model = pc_model AND pc_speed  <3 
EXCEPT
SELECT pr_maker
FROM PRODUCT
WHERE pr_type = 'printer'