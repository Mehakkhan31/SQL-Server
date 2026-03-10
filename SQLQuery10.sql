--COMBINING DATA

--JOINING DATA
--Basic joins
--1). INNER JOIN:-
-- * Returns only the rows that have matching values in both tables.

--Q. Get all customers along with their orders, but only for customers who have placed an order.
SELECT *
FROM customers
INNER JOIN orders
ON id = customer_id

SELECT 
   customers.id,
   customers.first_name,
   orders.order_id,
   orders.sales
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id

--Instead of full name like cutomers wright 'c', orders 'o' .
SELECT 
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id

--2). LEFT JOIN:-
-- * Returns all rows from the left table and matching rows from the right table.
-- * If no match, the right table columns will be NULL.

--Q. Get all customers along with their orders, including those without orders.
SELECT 
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

--Q. Get all customers along with their orders, including orders without matching customers using LEFT JOIN.
SELECT 
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id

--3). RIGHT JOIN
-- * Returns all rows from the right table and only matching rows from the left table.

--Q. Get all customers along with their orders, including orders without matching customers.
SELECT 
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id

--4) . FULL JOIN
-- * Returns all rows from both tables.
-- * Non-matching rows from either table will contain NULLs.

--Q. get all customers and all orders, even if there's no match.
SELECT 
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id