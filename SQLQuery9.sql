--FILTERING DATA

--Comparision operator
--Using =
--Q. Retrive all customers from Germany.
SELECT *
FROM customers
WHERE country = 'Germany'

--using <>, != 
--Q. Retrive all customers who are from not from Germany.
SELECT *
FROM customers
WHERE country != 'Germany'

--using >
--Q. Retrive all customers with a score greater than 500
SELECT *
FROM customers
WHERE score > 500

--using >=
--Q. Retrive all customers with a score  500 or more.
SELECT *
FROM customers
WHERE score >= 500

--using <
--Q. Retrive all customers with score less than 500.
SELECT *
FROM customers
WHERE score < 500

--using <=
--Q. Retrive all customers with a score 500 or less .
SELECT *
FROM customers
WHERE score <= 500

--Logical operators
--And
