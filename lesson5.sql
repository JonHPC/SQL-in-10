--Lesson 5

--Challenge 1
SELECT vend_name
FROM Vendors
WHERE vend_country = 'USA' AND vend_state = 'CA';

--Challenge 2
-- Solution 1
SELECT order_num, prod_id, quantity
FROM OrderItems
WHERE (prod_id='BR01' OR prod_id='BR02' OR prod_id='BR03')
 AND quantity >=100;
-- Solution 2
SELECT order_num, prod_id, quantity
FROM OrderItems
WHERE prod_id IN ('BR01','BR02','BR03')
 AND quantity >=100;

--Challenge 3
SELECT prod_name, prod_price
FROM products
WHERE prod_price >= 3 AND prod_price <= 6
ORDER BY prod_price;