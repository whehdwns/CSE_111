DROP TRIGGER lineitemtrigger1;
DROP TRIGGER lineitemtrigger2;

CREATE TRIGGER lineitemtrigger1 
AFTER DELETE ON lineitem
FOR EACH ROW
    BEGIN
    UPDATE orders SET o_orderpriority = "HIGH" WHERE o_orderkey = OLD.l_orderkey;
END;

CREATE TRIGGER lineitemtrigger2 
AFTER INSERT ON lineitem
FOR EACH ROW
    BEGIN
    UPDATE orders SET o_orderpriority = "HIGH" WHERE o_orderkey = NEW.l_orderkey;
END;

DELETE
FROM lineitem
WHERE l_orderkey IN (SELECT l_orderkey 
                     FROM lineitem, orders 
                     WHERE l_orderkey = o_orderkey AND o_orderdate LIKE '%1995-08%');

SELECT COUNT(*)
FROM orders
WHERE o_orderpriority LIKE '%HIGH%' AND o_orderdate LIKE '%1995-08%';