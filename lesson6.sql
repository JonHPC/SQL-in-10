--Lesson 6

--Challenge 1
SELECT prod_name, prod_desc
FROM Products
WHERE prod_desc LIKE '%toy%';

--Challenge 2
SELECT prod_name, prod_desc
FROM Products
WHERE NOT prod_desc LIKE '%toy%'
ORDER BY prod_name;

--Challenge 3
SELECT prod_name, prod_desc
FROM Products
WHERE prod_desc LIKE '%toy%' AND prod_desc LIKE '%carrots%';

--Challenge 4
SELECT prod_name, prod_desc
FROM Products
WHERE prod_desc LIKE '%toy%carrots%';