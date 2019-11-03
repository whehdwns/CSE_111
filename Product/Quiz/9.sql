--For each hd size, find the average price of a PC
SELECT AVG(pc_price)
FROM PC
GROUP BY pc_hd