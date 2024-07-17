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

-- alter table <table_name> change <oldcolumn_name> <newcolumn_name> datatype
alter table books change book_no book_number varchar(90);