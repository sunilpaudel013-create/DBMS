-- TO CREATE DATABASE WE HAVE COMMANDS AS 
CREATE DATABASE DATABASE_NAME:


--BASIC CRUD OPERATIONS
-- CREATE
-- READ
-- UPDATE
-- DELETE


-- Creating the table inside this database;
CREATE TABLE Student 
(
id int,
name varchar(30), 
city varchar(30)
);

-- Inserting the data into table 
INSERT INTO Student(id, name, city)
VALUES(1,'Sunil', 'ktm'),
(2, 'Sam', 'australia'),
(3, 'rohit', 'mumbai'),
(4, 'virat', 'banglore');


-- Reading data from the table Stundents
--Selecting the all data
SELECT *FROM Student;


-- Selecting the name from the Student table 
SELECT name FROM Student;

-- Selecting with the where clause
--Selecting the name of the student whose id=1
SELECT name FROM Student 
WHERE id =1;

-- this might cause the problem because we havenot set the 
-- id as primary key, so multiple records can be add 
--with that id 

-- Selecting the multiple columns 
SELECT name, city FROM Student;

--UPDAING THE DATA
-- Lets say Sam mistakely shared his location as country name 
-- we want it to update to sydney 

UPDATE Student 
set city = 'sydney'
where name= 'Sam';

-- Reading the data
SELECT *from Student;


-- The updation with the non primary key isnot valid in 
-- those cases where data is higher , it may cause the problem

--DELETION
--Deleting the data with the city as ktm

DELETE FROM Student 
where city = 'ktm';

SELECT *FROM Student;

-- Delete the row with the id as 2
DELETE FROM Student 
WHERE id =2;

SELECT *FROM Student;

-- THis is all for day1 of learning sql


