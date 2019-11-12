--For all the makers that produce PCs, Laptops, and Printers, find the minimum price of a package that includes a PC, a Laptop, and a Printer.
SELECT MIN(pkgprice) 
FROM (SELECT P.pr_maker, P.minprice +L.minprice+R.minprice AS pkgprice
      FROM (SELECT pr_maker, MIN (pc_price) AS minprice 
            FROM PRODUCT, PC
            GROUP BY pr_maker)P ,
           (SELECT pr_maker, MIN(l_price) AS minprice
            FROM PRODUCT, Laptop
            GROUP BY pr_maker) L,
           (SELECT pr_maker, MIN(pri_price) AS minprice
            FROM PRODUCT, PRINTER
            GROUP BY pr_maker) R
    WHERE P.pr_maker = L.pr_maker AND P.pr_maker = R.pr_maker);