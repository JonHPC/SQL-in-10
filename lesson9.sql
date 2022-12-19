--Lesson 9

--Challenge 1
SELECT SUM(quantity) AS items_ordered
FROM OrderItems;

--Challenge 2
SELECT SUM(quantity) AS items_ordered
FROM OrderItems
WHERE prod_id = 'BR01';

--Challenge 3
SELECT MAX(prod_price) AS max_price
FROM Products
WHERE prod_price <= 10;