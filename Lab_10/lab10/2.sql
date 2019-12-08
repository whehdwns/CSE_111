DROP TRIGGER customertrigger1;
DROP TRIGGER customertrigger2;

CREATE TRIGGER customertrigger1 
AFTER UPDATE ON customer 
WHEN OLD.c_acctbal != NEW.c_acctbal
BEGIN
    UPDATE customer SET c_comment = "Negative balance!!  Add money now!"
    WHERE c_acctbal < 0;
END;

CREATE TRIGGER customertrigger2 
AFTER UPDATE ON customer
WHEN OLD.c_acctbal != NEW.c_acctbal
BEGIN
    UPDATE customer SET c_comment = "removes the warning"
    WHERE c_acctbal > 0;
END;

UPDATE customer
SET c_acctbal = -100
WHERE c_nationkey IN (SELECT n_nationkey 
                      FROM nation, region 
                      WHERE n_regionkey = r_regionkey AND r_name = 'ASIA');

--Write a query that returns the number of customers with negative balance from CHINA.
SELECT COUNT(*)
FROM customer, nation
WHERE c_nationkey = n_nationkey  AND c_acctbal < 0 AND n_name= 'CHINA';

UPDATE customer
SET c_acctbal = 100
WHERE c_nationkey = (SELECT n_nationkey 
                     FROM nation 
                     WHERE n_name = 'JAPAN');

--Write a query that returns the number of customers with negative balance from ASIA.
SELECT COUNT(*)
FROM customer, nation, region
WHERE c_nationkey = n_nationkey AND n_regionkey = r_regionkey AND c_acctbal < 0 AND r_name = 'ASIA'