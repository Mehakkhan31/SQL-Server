--order by
--group by
--having (used only with group by)
--SUM
--FROM
SELECT
    country,
   SUM(score) AS total_score,
   COUNT(id) AS total_customers
FROM customers
GROUP BY country

--having :- filter data after aggregation
--can be used only with group by

--HAVING

--Q.find the average score for each country considering only customers with a scire not equal to 0
--And return only those countries with an average score greater than 430

SELECT
   country,
   AVG(score) AS avg_score
FROM customers
WHERE score!=0
GROUP BY country
HAVING AVG(score) > 430

     --DISTINCT

--DISTINCT (use to remove duplicates)
--Q.Return unique list of all country 

SELECT DISTINCT country
FROM customers

--TOP

--TOP (Select value from top based on row)
--Q.1 Retrive only 3 customers

SELECT TOP 3 *
FROM customers

--Q.2 Retrive the top 3 customers with the highest scores 
SELECT TOP 3 *
FROM customers
ORDER BY score DESC

--Q.3 Retrive the top 2 customers with the Lowest scores 
SELECT TOP 2 *
FROM customers
ORDER BY score ASC

--Q.4 Get the Two most resent orders
SELECT *
FROM orders
ORDER BY order_date DESC


