--Use LaptopMakers to find the number of laptops sold and the average price of 
--the laptops for every maker. Show the expanded SQL statement that replaces the view.
SELECT COUNT(l_model), AVG(l_price)
FROM LaptopMakers
GROUP BY pr_maker
