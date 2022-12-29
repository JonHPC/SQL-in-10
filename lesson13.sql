--Lesson 13

--Challenge 1
SELECT cust_name, order_num
FROM Customers
 JOIN Orders ON Customers.cust_id = Orders.cust_id
ORDER BY cust_name;

--Challenge 2
SELECT cust_name, order_num
FROM Customers
 LEFT OUTER JOIN Orders ON Customers.cust_id = Orders.cust_id
ORDER BY cust_name;

--Challenge 3
SELECT prod_name, order_num
FROM Products LEFT OUTER JOIN OrderItems
 ON Products.prod_id = OrderItems.prod_id
ORDER BY prod_name;

--Challenge 4
SELECT prod_name, COUNT(order_num) AS orders
FROM Products LEFT OUTER JOIN OrderItems
 ON Products.prod_id = OrderItems.prod_id
GROUP BY prod_name
ORDER BY prod_name;

--Challenge 5
SELECT Vendors.vend_id, COUNT(prod_id)
FROM Vendors
 LEFT OUTER JOIN Products ON Vendors.vend_id = Products.vend_id
GROUP BY Vendors.vend_id;