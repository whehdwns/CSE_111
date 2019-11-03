--Find the PCs with speed higher than that of any laptop
SELECT pc_model
FROM PC
WHERE pc_speed IN 
        (SELECT pc_speed
        FROM PC, Laptop
        WHERE pc_model = l_model AND pc_speed > l_speed)            