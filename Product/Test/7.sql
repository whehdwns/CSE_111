--Find the maker that sells the most expensive PC and also sells Printers.
SELECT pr_maker  
FROM PRODUCT,
    (SELECT pc_model FROM PC
    WHERE pc_price = (SELECT MAX(pc_price) AS maxprice
                      FROM PC, PRODUCT
                      WHERE pr_model = pc_model AND 
                      pr_maker IN (SELECT pr_maker FROM PRODUCT WHERE pr_type ='printer')
                      )
      ) C
WHERE pr_model =C.pc_model AND pr_maker IN (SELECT pr_maker FROM PRODUCT WHERE pr_type ='printer'); 