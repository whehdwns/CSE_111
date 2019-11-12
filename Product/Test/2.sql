--What makers produce PCs or Laptops, but do not produce Printers?
SELECT DISTINCT pr_maker
FROM PRODUCT
WHERE pr_maker NOT IN (SELECT pr_maker FROM PRODUCT WHERE pr_type ='printer')
--or
--SELECT pr_maker FROM PRODUCT
--EXCEPT ALL
--SELECT pr_maker FROM PRODUCT WHERE type ='printer'