--Lesson 16

--Challenge 1
UPDATE Vendors
SET vend_state = UPPER(vend_state)
WHERE vend_country = 'USA';
UPDATE Customers
SET cust_state = UPPER(cust_state)
WHERE cust_country = 'USA';

--Challenge 2
-- First test the WHERE to make sure it selects only what you want to delete
SELECT * FROM Customers
WHERE cust_id = 1000000042;
-- Then do it!
DELETE Customers
WHERE cust_id = 1000000042;