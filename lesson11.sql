--Lesson 11

--Challenge 1
SELECT cust_id
FROM Orders
WHERE order_num IN (SELECT order_num
                    FROM OrderItems
                    WHERE item_price >= 10);

--Challenge 2
SELECT cust_id, order_date
FROM orders
WHERE order_num IN (SELECT order_num
                    FROM OrderItems
                    WHERE prod_id = 'BR01')
ORDER BY order_date;

--Challenge 3
SELECT cust_email FROM Customers
WHERE cust_id IN (SELECT cust_id
                  FROM Orders
                  WHERE order_num IN (SELECT order_num
                                      FROM OrderItems
                                      WHERE prod_id = 'BR01'));

--Challenge 4
SELECT cust_id,
       (SELECT SUM(quantity * item_price)
        FROM OrderItems
        WHERE order_num IN (SELECT order_num
                            FROM Orders
                            WHERE Orders.cust_id = Customers.cust_id)) AS total_ordered
FROM Customers
ORDER BY total_ordered DESC;

--Challenge 5
SELECT prod_name,
       (SELECT Sum(quantity)
        FROM OrderItems
        WHERE Products.prod_id=OrderItems.prod_id) AS quant_sold
FROM Products;