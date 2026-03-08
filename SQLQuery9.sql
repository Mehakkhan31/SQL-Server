--FILTERING DATA

--Comparision operator
--using =
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
--And (All conditions must be TRUE)
--Q. Retrieve all customers who are from the USA AND have a score gretaer than 500.
SELECT *
FROM customers
WHERE country = 'USA' AND score > 500

--OR (At least one condition must be TRUE
--Q. Retrieve all customers who areeither from USA OR have a score greater than 500.
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500

--NOT 
--Q. Retrieve all customers with a score NOT less than 500.
SELECT *
FROM customers
WHERE NOT score < 500

--Range Operator
--BETWEEN (check if a value is within a range)
--Q. Retrieve all customers whose score falls in the range BETWEEN 100 and 500.
SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500

SELECT *
FROM customers
WHERE score >= 100 AND score <= 500

--Membership Operator
--IN (check if a value is exist in a list)
--Q. Retrieve all customersfrom either Germany or USA
SELECT *
FROM customers
WHERE country IN ('Germany','USA')

--NOT IN
SELECT *
FROM customers
WHERE country NOT IN ('Germany','USA')

--Search Operator
--LIKE (Search for a pattern in text)
--Q. find all customers whose name start with 'M'.
SELECT *
FROM customers
WHERE first_name LIKE 'M%'

--Q. find all customers whose name ends with 'n'.
SELECT *
FROM customers
WHERE first_name LIKE '%n'

--Q. find all customers whose name contains 'r'.
SELECT *
FROM customers
WHERE first_name LIKE '%r%'

--Q. find all customers whose name contains 'r' in the 3rd position.
SELECT *
FROM customers
WHERE first_name LIKE '__r%'