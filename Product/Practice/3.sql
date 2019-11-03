--For each Laptop screen size, find the minimum price of Laptops in the category
SELECT MIN(l_price)
FROM Laptop
GROUP BY l_screen
