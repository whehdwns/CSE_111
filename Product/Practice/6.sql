--Find the average price for each product category 
--(PC, Laptop Printer) for every maker having products in all the categories
SELECT avgpc, avglaptop, avgprinter
FROM(SELECT pr_maker, AVG(pc_price) AS avgpc
     FROM PRODUCT, PC
     WHERE pr_model= pc_model GROUP BY pr_maker) AS SQ1,
     (SELECT pr_maker, AVG(l_price) AS avglaptop
      FROM PRODUCT, Laptop
      WHERE pr_model = l_model GROUP BY pr_maker) AS SQ2,
     (SELECT pr_maker, AVG(pri_price) AS avgprinter
     FROM PRODUCT, PRINTER
     WHERE pr_model = pri_model GROUP BY pr_maker) AS SQ3
 WHERE SQ1.pr_maker = SQ2.pr_maker AND SQ2.pr_maker = SQ3.pr_maker 