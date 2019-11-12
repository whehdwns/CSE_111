--What makers produce Laptops with screen larger than 15′′ that are cheaper than $1,000?
SELECT DISTINCT pr_maker
FROM PRODUCT, Laptop
WHERE pr_model = l_model AND l_screen > 15 AND l_price < 1000