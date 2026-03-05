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
