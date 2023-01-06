--Lesson 15

--Challenge 1
-- Obviously replace the details with your own
INSERT INTO Customers(cust_id,
                      cust_name,
                      cust_address,
                      cust_city,
                      cust_state,
                      cust_zip,
                      cust_country,
                      cust_email)
VALUES(1000000042,
       'Ben''s Toys',
       '123 Main Street',
       'Oak Park',
       'MI',
       '48237',
       'USA',
       'ben@fortabbwpc.wpcomstaging.com');

--Challenge 2
-- MySQL, MariaDB, Oracle, PostgreSQL, SQLite
CREATE TABLE OrdersBackup AS SELECT * FROM Orders;
CREATE TABLE OrderItemsBackup AS SELECT * FROM OrderItems;
-- SQL Server
SELECT * INTO OrdersBackup FROM Orders;
SELECT * INTO OrderItemsBackup FROM OrderItems;