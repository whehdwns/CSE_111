--Find the model number of the color printer with the highest price
SELECT pri_model
FROM PRINTER
WHERE pri_color = 'true'
GROUP BY pri_model
HAVING MAX(pri_price)