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
insert into employee 
values(1, 'raj','sharma','raj.sharma@example.com','IT',50000,'2020-01-15');

-- this need to fix at backend because the id 1 is need to set 1. 

insert into employee(fname, lname , email, dept, salary, hire_date)
values('priya','singh','priya.singh@example.com','HR',45000,'2019-03-22'),
('arjun','verma','arjun.verma@example.com','IT',55000,'2021-06-01'),
('suman','patel','suman.patel@example.com','Finance',60000,'2018-07-30'),
('kavita','rao','kavita.rao@example.com','HR',47000,'2020-11-10'),
('amit','gupta','amit.gupta@example.com','Marketing',52000,'2020-09-05'),
('neha','desai','neha.desai@example.com','IT',48000,'2019-05-18'),
('rahul','kuma','rahul.kumar@example.com','IT',53000,'2021-02-14'),
('anjali','mahta','anjali.mehta@example.com','Finance',61000,'2018-12-03'),
('vijay','nair','vijay.nair@example.com','Marketing',50000,'2020-04-19');


-- reading the data
select *from employee;

-- concept of string concatination
select concat(fname, lname) from employee;
--this will merge the fname and lname together with no space

select concat(fname, ' ','lname') as Fullname from employee;
-- this will create a column name Fullname where concatination result is stored

-- use of concat_ws
-- this is used for raj-sharma type of result or data display
select concat_ws('-',fname, lname) as fullname from employee;


-- use of substring 
-- this is used for choosing the substring from the main string 
select substring('hello',1,4); -- (string, first_index, last_index)
-- this needs to display the hell 

-- use of replace like hey buddy to hello buddy
select replace('hey buddy','hey','hello');
-- this needs to display the hello buddy

-- use of reverse 
-- this is used for reversing the string 
select reverse('linus');
-- this will display sunil as the result

-- length 
select length('sunil');
-- displays the length of the string 

-- upper and lower 
-- convert the string into the uppercase and lowercase respectively
select upper('sunil');
select lower('SUNIL');

--left choose the character from left side 
select left('sunil',3);
-- sun

-- right 
select right('sunil','3');
-- last 3 - nil

-- trim - deletes the first and last space if there is available 

-- position
select position('ni' in 'sunil');
--3

-- excercise task 1 : display like 1:raj:sharma:IT
select concat(id, ':',fname, ':',lname,':',dept) from employee;

-- display: 1:raju sharma:IT:50000
select concat(id, ':',fname,'u',' ',lname,':',dept,':',salary) from employee
limit 1;

-- 4:suman:FINANCE
select concat(id,':',fname, ':',upper(dept)) from employee;

-- l1 raju
select concat(substring(dept, 1, 1),id, ' ', fname) from employee;


-- some question related to group by, distinct, order by etc

--1 . find the different type of department from the database
select distinct dept from employee;


--2. display record with high to low salary 
select *from employee 
order by(salary) desc;


-- 3. reading the top 3 data from the table employee
select *from employee
limit 3;

--4. fname starts with a 
select *from employee
where fname like 'a%';

--5. lname length =4 .
select *from employee
where length(lname) =4;

-- excercise from count, groupby, min, max, sum and avg

--1. total no of employee in the database ?
select count(id) from employee;


--2. employee number in each department
select dept,count(id) from employee 
group by(dept);

--3. find the lowest salary paying
select min(salary) from employee;

--4. find the highest salary paying 
select max(salary) from employee;

--5. total salary of all the employee
select sum(salary) from employee;

--6. average salary in each department
select avg(salary) from employee 
group by dept;
