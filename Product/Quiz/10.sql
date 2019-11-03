--Find all the PC’s with hd less than 120 made by B
SELECT pc_model
FROM PC, PRODUCT
WHERE pr_model = pc_model AND pr_maker = 'B' AND pc_hd < 120