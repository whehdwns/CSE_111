--For each laptop made by B, triple the amount of ram and add 1000 to hd
UPDATE Laptop
SET l_ram= 3*l_ram AND l_hd= l_hd+1000
WHERE l_model = (SELECT pr_model FROM PRODUCT WHERE pr_maker = 'B')