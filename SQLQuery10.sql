--COMBINING DATA

--JOINING DATA
--Basic joins
--1). INNER JOIN
--Q. Get all customers along with their orders, but only for customers who have placed an order.
SELECT *
FROM customers
INNER JOIN orders
ON id = customer_id


