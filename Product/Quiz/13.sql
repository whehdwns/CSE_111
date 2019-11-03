SELECT AVG(pc_ram)
FROM PC, PRODUCT p1, PRODUCT p2, Laptop
WHERE p1.pr_model =pc_model AND p1.pr_type='PC' AND p2.pr_model=l_model AND p2.pr_type='laptop'
