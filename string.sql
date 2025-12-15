-- Concept of string function and excercise solution.

-- creating the table named employee
create table employee(
id serial primary key, 
fname varchar(30) not null,
lname varchar(30) not null,
email varchar(50) unique, 
dept varchar(20) not null,
salary decimal(7,2) default 30000,
hire_date date default current_date
);


-- inserting the data into the table 
insert into employee(fname, lname, email , dept, salary, hire_date)
values('arjun','verma','arjun.verma@example.com','IT',55000,'2021-06-01'),
('suman','patel','suman.patel@example.com','Finance',60000,'2018-07-30'),
('kavita','rao','kavita.rao@example.com','HR',47000,'2020-11-10');


