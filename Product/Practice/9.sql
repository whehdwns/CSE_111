--What laptop screen sizes are offered with at least 10 different speeds?
SELECT l_screen
FROM Laptop
HAVING COUNT(l_speed) >=10