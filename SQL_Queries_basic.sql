-- DDL Commands-- 
use test_sql;
create table student(name varchar(20),rollno int);
alter table student add id int;
alter table student add phone int;
alter table student modify phone varchar(20);
alter table student change phone course varchar(20);
alter table student drop column course;

-- DML Commands -- 
insert into student(id,name,rollno) values(1,"Nimisha",25);
insert into student(id,name,rollno) values(2,"Nisa",2),(3,"Sara",45);
insert into student values("sha",33,4);
select * from student;
select name from student;

-- To remove error in update-- 
SET SQL_SAFE_UPDATES = 0;

UPDATE student SET name = 'test' WHERE id = 1;
select * from student;

-- Rename column-- 
alter table student rename column name to fullname;
select * from student; 

-- Rename table--
alter table student rename to students;
select * from students; 

-- Drop column-- 
alter table students drop column rollno;
select * from students;  