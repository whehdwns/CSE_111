DROP TRIGGER orderstrigger;

CREATE TRIGGER orderstrigger  
AFTER INSERT ON orders -- event
FOR EACH ROW
BEGIN    
    UPDATE orders 
    SET o_orderdate =DATETIME('NOW', '+1 days')
    WHERE o_orderdate = NEW.o_orderdate;
END;

INSERT INTO orders
SELECT o_orderkey, o_custkey, o_orderstatus, o_totalprice, '',  o_orderpriority, o_clerk, o_shippriority, o_comment
FROM orders
WHERE o_orderdate BETWEEN '1996-01-01' AND '1996-12-31';


SELECT *
FROM orders
WHERE o_orderdate LIKE '%2019%';
