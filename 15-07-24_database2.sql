-- DDL (DATA DEFENATION LANGUAGE) 1.CREATE 2.ALTER 3.TURNCATE 4.DROP .
-- To create database
create database Hamzaa_Shaikh;
-- To see all database
show databases;
-- To select database(use database_name)
use Hamzaa_Shaikh;
-- To see all tables in database
show tables;
-- To delete database(drop databade database_name)
drop database hamzaa_shaikh;
-- To creeate table
create table employee(
Employee_Id int,
Employee_FirstName varchar(60),
Employee_lastname varchar(60)
);
create table student(
student_rollno int,
student_FirstName varchar(50),
student_lastname varchar(50),
student_age int,
student_dob date
);
desc student;

-- To add column for existing table
-- atler table <table_name> add column <column_name> <data_type>
alter table student add column marks int;

-- atler table <table_name> add column <column_name> <data_type> after <existing_column_name>
alter table student add column teacher_id int after student_lastname;


-- atler table <table_name> add column <column_name> <data_type> first;
alter table student add column email varchar(80) first;

-- to delete existing column
-- alter table<table_name> drop column <column_name>;
alter table student drop column teacher_name;

-- to drop table
drop table student;

create table books(
book_no int,
book_name varchar(70),
book_author varchar(60)
);
desc books;

-- alter table <table_name> change <oldcolumn_name> <newcolumn_name> datatype;
alter table books change book_no book_number varchar(90);
-- alter table <table_name> change <oldcolumn_name> <newcolumn_name> datatype; (same query to change <datatype>)
alter table books change book_number book_num int;

-- alter table <old-table-name> rename to <new-table-name>
alter table books rename to book_shop;
desc book_shop;

-- DML (Data Manipulation Language); 1.INSERT 2.DELETE 3.UPDATE .

create database ham_shaikh;
use ham_shaikh;

create table department(
department_id char(2),
department_name varchar(50)
);
desc DEPARTMENT;

-- insert into <table_name> values <v1,v2,v3>;
insert into department values("d1","I.T");

select * FROM DEPARTMENT;

-- insert into <table-name> (c1,c2,c3) values (c1v1,c2v2,c3v3)
insert into department (department_id) values ("d2"); 

insert into department (department_name,department_id) values ("Marketing","d3");

create table staff(
staff_id int,
staff_name varchar(70),
staff_age int
);
desc staff;

insert into staff values(1.1,"XYZ",30);
insert into staff values(1.2,"abc",31);
insert into staff values(2,"tyu",32);
insert into staff values 
(4,"ham",32),
(5,"faa",21),
(6,"guru",22);
insert into staff (staff_id,staff_name)
values
(7,"amit"),
(8,"qwe"),
(9,"rty");
select * from staff;

create table bike(
bike_no int,
bike_name varchar(80),
bike_tankinliter int
);

desc bike;

insert into bike values(111,"XYZ",10);

insert into bike 
values
(222,"sdf",20),
(333,"asd",30);

insert into bike (bike_no,bike_name)
values
(444,"wer"),
(555,"ryw");
select * from bike;