--Out of all the makers that produce PCs, find the cheapest Laptop sold by them.
SELECT l_model
FROM Laptop, PRODUCT
WHERE l_model = pr_model AND pr_maker IN (SELECT pr_maker FROM PRODUCT WHERE pr_type ='pc')
     AND l_price = (SELECT MIN(l_price) AS minprice
                    FROM PRODUCT, Laptop
                    WHERE pr_model = l_model AND pr_maker IN(SELECT pr_maker FROM PRODUCT WHERE pr_type ='pc')
    );