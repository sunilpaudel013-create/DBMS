-- Creating the database named company and implementing 
-- the concept of aggregate function and group by 

-- creating the database first 
Create Database company;

-- creating the table named Information
Create table Information
(
emp_id serial primary key, 
fname varchar(20) not null,
lname varchar(20) not null,
email varchar(50) unique,
dept varchar(20) not null,
salary decimal(7,2) default 30000,
hire_date date not null default current_date
);

-- inserting the data into the tables  
INSERT INTO Information(fname, lname, email, dept, salary, hire_date)
VALUES
('priya','singh','priya.singh@example.com','HR',30000,'2025-12-10');
-- need to set the value at the backend ie id to 1 

select *from Information;

insert into Information(fname, lname, email, dept, salary,hire_date)
values('arjun','verma','arjun.verma@example.com','IT',55000,'2021-06-21'),
('suman','patel','suman.patel@example.com','Finance', 60000,'2018-07-30'),
('kavita','rao','kavita.rao@example.com','HR',47000,'2020-11-30'),
('amit','gupta','amit.gupta@example.com','Marketing',52000,'2020-09-25'),
('neha','desai','neha.desai@example.com','IT',48000,'2019-05-18'),
('rahul','kumar','rahul.kumar@example.com','IT',53000,'2021-02-14'),
('anjali','mehta','anjali.mehta@example.com','Finance',61000,'2018-12-03'),
('vijay','nair','vijay.nair@example.com','Marketing ',50000,'2020-04-19');

--reading the data of the Information table
Select *from Information;

-- concept of aggregate function?
-- used to calculate these concept 
-- how to calculate the total no of employees
-- employee with max salary 
-- average salary of the employee

-- count
Select count(emp_id) from Information;
-- this is used to calculate the total no of the employee
-- since the emp_id is the primary key , we used it 

--total salary of the all employees
select sum(salary) from Information;

-- average salary of the employees
select avg(salary) from Information;

-- minimun salary of the employees
select min(salary) from Information;


-- for max salary of the employees
select max(salary) from Information;


-- concept of group by 
/* this is used to group the data like the data from each 
department */

select dept, count(fname) from Information
group by dept;

