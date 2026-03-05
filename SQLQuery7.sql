-- DDL (Data Definition Language)
--Q. Create a new table called persons with coluns:id, name,birth_date,and phone
CREATE TABLE persons(
   id INT NOT NULL,
   birth_date DATE,
   person_name VARCHAR(50) NOT NULL,
   CONSTRAINT pk_persons PRIMARY KEY (id)
)

--add new column email
ALTER TABLE persons
 ADD emailss VARCHAR(50) NOT NULL

 SELECT * FROM persons

 --Remove column 
ALTER TABLE persons
 DROP COLUMN email

 SELECT * FROM persons
