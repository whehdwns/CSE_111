--How many models of laser color Printers are available
SELECT COUNT(pri_model)
FROM PRINTER
WHERE pri_color = 'true' AND pri_type='laser'