--DML (Data Monipulation language)
--INSERT
INSERT INTO customers (id, first_name, country, score)
VALUES
 (6, 'Anna', 'USA', NULL),
 (7, 'Sam', NULL, 100)

 SELECT * FROM customers

 --INSERT with SELECT
 --Q. Insert data from 'customers' into 'persons'
 INSERT INTO persons (id, birth_date, person_name)
 SELECT 
 id ,
 NULL,
 first_name
 
 FROM customers

 SELECT * FROM persons

 --UPDATE
 UPDATE customers
 SET score = 0
 WHERE id = 6

 SELECT * 
 FROM customers
 WHERE id = 6

 --Q. Change the score of customer 10 to 0 and update the country to UK
 UPDATE customers
 SET score = 0,
     country = 'UK'
 WHERE score IS NULL

 SELECT * 
 FROM customers

 --Q. Delete all customers with ID gretaer than 5
 DELETE FROM customers
 WHERE id > 5

 SELECT * 
 FROM customers

 --Q. Delete all data from table persons
TRUNCATE TABLE persons

 SELECT * 
 FROM persons


 