-- concept of altering query
-- this query is used to delete or add the column in the table 

-- creating the table with the column id, name, city
create table person(
id int primary key, 
name varchar(30) not null,
city varchar(50) not null
);

-- inserting the data into the table 
insert into person(id, name, city)
values(1,'sunil','mumbai'),
(2, 'paul','chennai'),
(3, 'raju', 'banglore');


--reading the data from the table named person
select *from person;


--creating the column named age inside that person table 
alter table person
add column age int default 15;

select *from person;

---remove that column
alter table person
drop column age;

select *from person;

-- can change the name of the columns changing the name to fullname 
alter table person
rename column name to full_name;

select *from person;

--can alter the name of the table from person to  person_details
alter table person
rename to person_details;

select *from person_details;

-- updating the size of name variable to 100
alter table person_details 
alter column full_name 
set data type varchar(100);

--reading the table 
Select *from person_details;

-- this deletes the default value for the age column
alter table person_details
alter column age 
drop default;

select *from person_details;

-- concept of check constraint
alter table person_details
add column 
mob varchar(20) check (length(mob) >=10);

select *from person_details;

