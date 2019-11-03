--Find the model number and price of all the products (of any types) made by A
SELECT pr_model, pc_price
FROM PRODUCT, PC
WHERE pr_model = pc_model AND pr_maker ='A'
UNION 
SELECT pr_model, l_price
FROM PRODUCT, Laptop
WHERE pr_model = l_model AND pr_maker ='A'
UNION
SELECT pr_model, pri_price
FROM PRODUCT, PRINTER
WHERE pr_model = pri_model AND pr_maker ='A'