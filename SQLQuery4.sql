-- Retrive customers with a score not to 0
-- SELECT, FROM, WHERE(add conditions).

SELECT *
FROM customers

WHERE score != 0
	

-- Retrive customers from Germany

SELECT *
FROM customers

WHERE 
	country = 'Germany'

-- SQL Query by ORDER BY

-- Retrieve all customers and sort the results by the highest score first
SELECT *
FROM customers
ORDER BY score DESC

-- Retrieve all customers and sort the results by the LOWEST score first
SELECT *
FROM customers
ORDER BY score ASC

-- NESTED (OREDER BY)
-- Retrieve all customers and sort the results by the country and then by the highest score
SELECT *
FROM customers
ORDER BY country ASC, score DESC

	
