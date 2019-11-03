--What printers produced by the maker of the 
--most expensive PC that also produces Printers are the cheapest.
SELECT pri_model
FROM PRINTER, PRODUCT
WHERE pr_model =pri_model AND 
    pr_maker IN (SELECT pr_maker FROM PRODUCT, PC 
                WHERE pr_model = pc_model 
                HAVING MAX(pc_price)) AND
    pr_maker IN(SELECT pr_maker FROM PRODUCT, PRINTER
                WHERE pr_model = pri_model
                HAVING MIN(pri_price)) 
    