-- Concept of datatypes 
An attributes that defines the types of data in the column of our database.

most widely used datatypes 
Numeric : int, double , float, decimal
String : varchar
Date : DATE
boolean: BOOLEAN

-- for the case of decimal (5,2)
It means there are total number of 5 digits and no of digits after decimal is 2
can store the digit less than 7 not greater than 6.

Constraint 
-- it is the rule which is applied to the columns

1. Primary key
-- it is unique in the table, and can't be null.
-- a table can have only one primary key.
-- for eg: username in the instagram

2. Not null
-- it doesnot allows the null values

3. Default
-- this is used to set the default value of the type .
-- for eg acc_type varchar(30) not null default 'saving';

4. Auto-increment 
-- it is used to autoincrement the value , like the id
-- when the data is added then the value of id is incremented
-- if it is set for that.

task1 : Create the database name bankdb , inside this create the table
named data which contains the attributes name 
-- emp_id , fname, lname, email , dept , salary , hire-date

-- creating the table contains the given attributes named bank_info

create table bank_info (
emp_id serial primary key, 
fname varchar(20) not null,
lname varchar(20) not null,
email varchar(40) not null unique,
dept varchar(20) not null,
salary int not null default 30000,
hire_date DATE not null default current_date
);

-- inserting the date into the table 
INSERT INTO bank_info (fname, lname, email, dept, salary, hire_date)
VALUES
('raj', 'Sharma', 'raj.sharma@example.com', 'IT', 30000, '2020-01-14'),
('priya', 'Singh', 'priya.singh@example.com', 'HR', 45000, '2019-03-22'),
('arjun', 'Verma', 'arjun.verma@example.com', 'IT', 50000, '2021-05-21'),
('suman', 'Basnet', 'suman.basnet@example.com', 'Finance', 50000, '2018-07-30');

Select *from bank_info;


