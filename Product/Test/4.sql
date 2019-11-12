--For each maker who produces PCs with more than 4 GB of ram, find the average price of these PCs (with more than 4 GB of RAM).
SELECT pr_maker, AVG(pc_price) AS avgpc
FROM PRODUCT, PC
WHERE pr_model =pc_model AND pc_ram > 4
GROUP BY pr_maker 