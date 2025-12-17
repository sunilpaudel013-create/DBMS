-- here is the concept of joins which is used to join two table in a database
--JOIN

-- at first creating two table Customers and Orders
create table Customers(
cust_id int primary key,
name varchar(30) not null,
email varchar(50) unique
);

create table Orders(
order_id int primary key,
order_date date not null,
amount decimal(7,2) not null,
cust_id int,
foreign key(cust_id) references Customers(cust_id)
);

-- inserting the data into the table 
insert into Customers
values(101,'Raju','raju@gmail.com'),
(102, 'Sham','sham@gmail.com'),
(103,'Baburao','babu@gmail.com');

-- inserting into the customer table 
insert into Orders
values(1, '2023-05-15',200,101),
(2, '2023-04-28',500,102),
(3,'20233-05-14',1000,101);

-- reading the data from both tables
select *from Customers;
select *from Orders;

-- concept of inner join
select c.name, count(o.order_id) from Customers c
inner join
Orders o
ON c.cust_id = o.cust_id
group by name;

-- left join
-- it selects the matching data and data from first table 
select *from Customers c
left join
Orders o
ON c.cust_id = o.cust_id;

-- right join 
select *from Customers c
right join
Orders o
ON c.cust_id = o.cust_id;


--concept of many to many relationship
-- for eg: students and courses which has the many to many 
-- relationship to each others

-- creating the table name students
create table students(
s_id serial primary key, 
name varchar(100) not null
);

-- creating the course table 
create table courses(
c_id serial primary key, 
name varchar(100) not null,
fee numeric not null);

-- enrollment table 
create table students_courses(
e_id serial primary key, 
s_id int not null,
c_id int not null,
enrollment_date date not null,
foreign key(s_id) references students(s_id),
foreign key(c_id) references courses(c_id)

);

-- inserting the data into students 
insert into students(name)
values('raju'),
('sham'),
('alex');


-- into courses
insert into courses(name, fee)
values('mathematics',500.00),
('physics',600.00),
('chemistry',700.00);


-- into enrollments
insert into students_courses(s_id, c_id, enrollment_date)
values
(1,1,'2024-01-01'), -- raju enrolled in math
(1,2,'2024-01-15'), -- raju enrolled in physics
(2,1,'2024-02-01'), -- sham enrolled in math
(2,3, '2024-02-15'), -- sham enrolled in chemistry
(3,3,'2024-03-25'); -- alex enrolled in chemistry


-- s-id to name of student and c-id to course name
select 
s.name,
c.name,
e.enrollment_date,
c.fee 
from
students_courses e
join students s 
on e.s_id = s.s_id
join courses c
on c.c_id = e.c_id;



