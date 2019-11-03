--Find the makers of PC’s with speed higher than that of any laptop
SELECT pr_maker
FROM PRODUCT, PC
WHERE pr_model =pc_model AND pr_maker ='PC' AND 
    pc_speed IN (
        SELECT pc_speed
        FROM Laptop, PC
        WHERE pc_speed > l_speed AND pc_model = l_model)
    