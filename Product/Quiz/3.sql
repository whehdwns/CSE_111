--Find the minimum price of PCs made by B
SELECT MIN(pc_price)
FROM PC, PRODUCT
WHERE pr_model = pc_model AND pr_maker = 'B'