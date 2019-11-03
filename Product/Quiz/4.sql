--For each PC with hd size above 150, find the average price for that size
SELECT AVG(pc_price)
FROM PC
WHERE pc_hd > 150
GROUP BY pc_hd