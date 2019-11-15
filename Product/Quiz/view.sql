--Define a virtual view LaptopMakers that gives all the details of a laptop (model, speed, ram, hd, screen , price), 
--and the maker, sorted by the model and price in ascending orders.
CREATE VIEW LaptopMakers
AS
SELECT l_model, l_speed, l_ram, l_hd, l_screen, l_price , pr_maker
FROM Laptop, PRODUCT
WHERE l_model = pr_model
GROUP BY l_model
ORDER BY l_price ASC
