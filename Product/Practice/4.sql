--What makers produces color Printers cheaper than $1000
SELECT pr_maker
FROM PRODUCT, PRINTER
WHERE pr_model = pri_model AND pri_color='true' AND pri_price < 1000
