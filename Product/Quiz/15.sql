--Find the PCs for which there is at least one laptop with the same speed, ram, and hd made by the same maker
SELECT pc_model 
FROM PC, PRODUCT
WHERE pr_model = pc_model AND 
        pr_maker IN (SELECT pr_maker
                    FROM PRODUCT, PC
                    WHERE pr_model = pc_model AND 
                    pc_model IN (SELECT pc_model
                                FROM PC, Laptop
                                WHERE pc_model = l_model
                                HAVING (COUNT(pc_speed = l_speed) =1) or (COUNT(pc_ram=l_ram)=1) or (COUNT(pc_hd=l_hd)=1)
                                )
                    ) 
