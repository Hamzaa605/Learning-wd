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

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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


alter table bike alter bike_no set default 0;

alter table bike alter bike_no drop default;

desc bike;

-- alter table <table_name> add constraint <constraint_name> check <condition>;
alter table bike add constraint check_no check (bike_no>=0); 

insert into bike values(777,"mno",22);
insert into bike values(-888,"pqr",33);

-- alter table <table_name> drop constraint <constraint_name>;
alter table bike drop constraint check_no;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- foreign-key.
-- 1.
create table category(
category_id int primary key,
category_name varchar(90) not null
);

desc category;

insert into category values 
(1,"ELECTRONICS"),
(2,"MOBILE");
insert into category values(4,"T.V");

SELECT * FROM category;

create table product(
product_id int primary key,
product_name varchar(90) not null,
product_price int default 0 check(product_price>=0),
category_id int,
constraint category_product foreign key(category_id) 
references category(category_id)
);

desc product;

insert into product values (11,"T.V",55000,1);
insert into product values (12,"T.Vs",55003,4);
select * from product;

-- alter table<table-name> drop foreign key <name-ofoconstraint>;
alter table product drop foreign key category_product;

-- alter table <table-name> add constraint <constraint-name> foreign key (column-name) references (table-name<column-name>);
alter table product add constraint category_product foreign key(category_id) 
references category(category_id);

-- 2..
-- school
create table schooll(
schooll_id int primary key,
schooll_name varchar(100)
);

desc schooll;

insert into schooll values(11,"M.E.A");

select * from schooll;

-- student
create table students(
roll_no int primary key,
students_name varchar(100) not null,
phone_No bigint,
schooll_id int,
constraint schooll_students foreign key (schooll_id)
references schooll(schooll_id)
);

desc students;

insert into students values(1,"xyz",9876543211,11);

select * from students;



-- 3...
-- courses
create table courses(
courses_id int primary key,
courses_name varchar(90) not null
);

desc courses;




select * from courses;

-- teacher
create table teacher(
teacher_id int primary key,
teacher_name varchar(80) not null,
phone_noo bigint,
courses_id int,
constraint courses_teacher foreign key (courses_id)
references courses(courses_id)
);

desc teacher;




select * from teacher;

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TURE=1 / FALSE=0

select(3>1);
select(3!=3);
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- AND (ALL STATEMENT SHOULD BE TURE)
select (20>10 and 40=40);
select (20<10 and 40!=40);

select (10<20 and 40>40);
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OR 
select (20>10 or 40=40);
select (20<10 or 40!=40);

select (10<20 or 40>40);

select(90=90 or 40!=40 or 50>50);

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- NOT
select not(90=90 or 40!=40 or 50>50);

select not(20>10 and 40=40);

select not(3!=3);

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 4-----------
drop table department;
drop table employee;




create table department(
department_id varchar(60) primary key,
department_name varchar(90) not null
);

desc department;
insert into department values ("D1","MARKETING"),("D2","IT"),("D3","HUMAN_RESOURCE");

create table employee(
e_id int4 primary key,
e_name varchar(80) not null,
city varchar (80),
salary bigint,
department varchar(60),
constraint department_employee foreign key (department)
references department(department_id)
);

desc employee;
insert into employee values
(1111,"nikita","mumbai",67000,"D1"),
(1112,"prajakta","pune",80000,"D1"),
(1113,"manisha","banglore",20000,"D2"),
(1114,"nilesh","mumbai",35469,"D3"),
(1115,"monal","pune",34452,"D2");

insert into employee values (1116,"nikita","mumbai",67000,"D4");

-- select column_name from table_name
select e_id from employee;

select e_name,salary from employee; 

select * from employee;

select * from department;

alter table employee drop foreign key department_employee;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- (AS) TO GIVE TEMP NAME TO COLUMN.

select (100>90) as Answer;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- WHERE CLAUSE

 select * from employee where e_id="1111";
select department from employee where e_id="1111";
select city,e_name from employee where e_id="1111";

select * from employee where salary>20000;
select * from employee where salary<=20000;

select * from employee where city="mumbai" and salary<50000;

select * from employee where city="mumbai" or  city="banglore";

select * from employee where salary>=10000 and salary<=34500;

select * from employee where department="D1" and salary<=20000;

select * from employee where department="D1" and city="pune";

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- (IN) OPRAETER

select * from employee where city in("mumbai","pune");

select * from employee where e_id in("1111","1113","1114");

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- BETWEEN OPRAETER 

select * from employee where salary between 30000 and 40000;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE --
-- update <table-name> set column1=value1,column2=value2,.....
-- where condition;
alter table employee add column age int;

update employee set age=0;
update employee set age=25 where e_id=1111;
update employee set age=26 where e_id=1112;
update employee set age=27 where e_id=1113;
update employee set age=28 where e_id=1114;
update employee set age=29 where e_id=1115;

update employee set city="pune" where e_id=1111; 
update employee set city="mumbai" where e_id=1112;

update employee set salary=(39452+5000) where e_id=1115;
 update employee set salary=salary+3000 where e_id=1111;

update employee set age=age+2;

update employee set salary=salary-2000 where department="D1";

UPDATE employee set city=null where e_id in("1111","1113"); 

select * from employee where city is null;
select * from employee where city is not null;


select * from employee;
desc employee;

select * from employee where e_name!="nikita";

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from employee order by salary;

select * from employee order by salary desc;

select * from employee order by salary,age desc limit 1;

select * from employee order by salary limit 1;

select * from employee order by age;

select * from employee order by age desc ;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

show tables;

select department, count(e_id) from employee
group by department;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select city, count(e_id) 
from employee
group by city;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select sum(salary) from employee;

select city,sum(salary),
avg(salary),min(salary),max(salary),count(e_id)
from employee 
group by city;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------

select department, 
sum(salary) AS SALARY,
avg(salary) AS AVGS,
min(salary) AS MIN,
max(salary) AS MAX,
count(e_id) AS E_ID 
from employee 
group by department;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

alter table employee add column gender char;

desc employee;

select * from employee;

update employee set gender="f";

update employee set gender="m" where e_id=1114;

select gender, count(e_id)
from employee group by gender;

select gender, count(e_id)
from employee 
group by gender 
having gender="f";

select gender, count(e_id)
from employee where salary>50000 
group by gender 
having gender="f";

select count(*)
from employee where salary>50000 
and gender="f";

select department, avg(salary) as average_sal
from employee
group by department
having avg(salary)<50000;

select department, avg(salary) as average_sal
from employee
group by department
order by average_sal limit 1;

select department, avg(salary) as average_sal
from employee
group by department
order by average_sal desc limit 1;
 
select department, count(e_id)
from employee 
group by department
order by count(e_id) limit 1;

select department, count(e_id)
from employee 
group by department
order by count(e_id) desc limit 1;

select department, sum(salary) as min_sal
from employee
group by department
order by min_sal limit 1;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- built in function

-- concat("hello","world")  output=helloworld

select concat("Mohammed"," ","Hamzaa"," ","Shaikh");

select concat("Mohammed"," ","Hamzaa"," ","Shaikh") as "name";

select * from employee;

select e_id,e_name,concat(e_id,"-",e_name) as "employee's" from employee;

select e_id,e_name,concat(e_id,"-","ename@itvedant.com") as Email
from employee;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
desc employee;

-- UPPER ("sql") output=SQL

SELECT upper("sql");
select lower("OUR");

insert into employee
values (1116,"faiz",lower("mUmBai"),38000,"D1",26,upper("f"));

select length("w e l c o m e");

select length("w e l c o m e")>15 as lengths;

select e_name, length(e_name) from employee;

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- substring
-- h e l l o
-- 1 2 3 4 5
select substr("hello",1);

select substr("hello",2,1);

select substr("hamza",length("hamza"),1);

select e_name, substr(e_name,length(e_name),1) from employee;

select e_name, upper(substr(e_name,length(e_name),1)) from employee;

select e_name,concat(e_name,"-",upper(substr(e_name,length(e_name),1))) from employee;

select concat(upper(substr(e_name,1,1)),lower(substr(e_name,2,length(e_name)-1))),upper(substr(e_name,length(e_name),1))
from employee;


select concat(upper(substr(e_name,1,1)),lower(substr(e_name,2,length(e_name)-2)),upper(substr(e_name,length(e_name),1))) 
as CASES
from employee;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

desc employee;


alter table employee add column joining_date date;

select e_name,salary,
case 
   when salary<30000 then "very less"
   when salary<60000 then "average"
   when salary<100000 then "very high"
else "-"
end as salarydata
from employee;



select e_name,salary,
case 
   when salary<30000 then "very less"
   when salary<60000 then "average"
   when salary<100000 then "very high"
else "-"
end as salarydata,
case
    when department="D1" then "marketing"
    when department="D2" then "fianance"
    when department="D3" then "i.t"
    else "-"
    end as department_name
from employee;


select e_id,e_name,department,
case
    when department="D1" then "marketing"
    when department="D2" then "fianance"
    when department="D3" then "i.t"
    else "-"
    end as department_name
from employee;


select * from employee;

update employee set salary=
case 
    when department="D1" then salary+2000
    when department="D2" then salary+1000
	when department="D3" then salary+2500
else salary
end;


alter table employee add column Email varchar(90);

select * from employee;

update employee 
set email=concat(substr(city,1,1),".",upper(e_name),"_",e_id,"@itvedant.com");

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--  COALESCE --
-- ---------
   
   select * from employee;
   
alter table employee add column phone_no bigint;

update employee set phone_no=9876543211,email=null where e_id in (1111,1112,1113);                                                      

select e_name,email,phone_no,coalesce(email,phone_no) from employee;






























































































































































































































































































































































































































































































































































































































































































