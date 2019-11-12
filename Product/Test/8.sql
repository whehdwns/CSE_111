--How many makers produce PCs with speed larger than 2.0, Laptops with hd larger than 250 GB, and laser printers?
SELECT COUNT(DISTINCT pr_maker)
FROM PRODUCT
WHERE pr_maker IN (SELECT pr_maker FROM PRODUCT, PC
                   WHERE pr_model =pc_model AND pc_speed > 2.0
                   INTERSECT
                   SELECT pr_maker FROM PRODUCT , Laptop
                   WHERE pr_model = l_model AND l_hd > 250
                   INTERSECT
                   SELECT pr_maker FROM PRODUCT, PRINTER
                   WHERE pr_model = pri_model AND pri_type ='laser'
                   );