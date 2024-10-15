use test_sql;

-- create query-- 

CREATE TABLE classmate(id INT PRIMARY KEY,name varchar(20),age int,email varchar(30),phone varchar(20));

-- insert query-- 

insert into classmate(id,name,age,email,phone) values(1,"Nimisha",25,"nimisha@gmail.com","1234567890"),(2,"Sreeshma",26,"sreeshma@gmail.com","1324526178"),(3,"Asla",24,"asla@gmail.com","1231234567");
insert into classmate(id,name,age,email,phone) values(4,"Sneha",23,"sneha@gmail.com","1334567890");

-- Select query-- 

select * from classmate;
select name,age from classmate;
select * from classmate where age>25;
select * from classmate order by age desc;
select name,age from classmate order by age desc;
