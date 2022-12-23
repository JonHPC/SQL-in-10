--Lesson 12

--Challenge 1
-- Equijoin syntax
SELECT cust_name, order_num
FROM Customers, Orders
WHERE Customers.cust_id = Orders.cust_id
ORDER BY cust_name, order_num;
-- ANSI INNER JOIN syntax
SELECT cust_name, order_num
FROM Customers INNER JOIN Orders
 ON Customers.cust_id = Orders.cust_id
ORDER BY cust_name, order_num;

--Challenge 2
-- Solution using subqueries
SELECT cust_name,
       order_num,
       (SELECT Sum(item_price*quantity)
       FROM OrderItems
       WHERE Orders.order_num=OrderItems.order_num) AS OrderTotal
FROM Customers, Orders
WHERE Customers.cust_id = Orders.cust_id
ORDER BY cust_name, order_num;
-- Solution using joins
SELECT cust_name,
       Orders.order_num,
       Sum(item_price*quantity) AS OrderTotal
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id
 AND Orders.order_num = OrderItems.order_num
GROUP BY cust_name, Orders.order_num
ORDER BY cust_name, order_num;

--Challenge 3
SELECT cust_id, order_date
FROM Orders, OrderItems
WHERE Orders.order_num = OrderItems.order_num
 AND prod_id = 'BR01'
ORDER BY order_date;

--Challenge 4
SELECT cust_email
FROM Customers
 INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
 INNER JOIN OrderItems ON Orders.order_num = OrderItems.order_num
WHERE prod_id = 'BR01';

--Challenge 5
-- Equijoin syntax
SELECT cust_name, SUM(item_price*quantity) AS total_price
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id
 AND Orders.order_num = OrderItems.order_num
GROUP BY cust_name HAVING SUM(item_price*quantity) >= 1000
ORDER BY cust_name;
-- ANSI INNER JOIN syntax
SELECT cust_name, SUM(item_price*quantity) AS total_price
FROM Customers
 INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
 INNER JOIN OrderItems ON Orders.order_num = OrderItems.order_num
GROUP BY cust_name
HAVING SUM(item_price*quantity) >= 1000
ORDER BY cust_name;