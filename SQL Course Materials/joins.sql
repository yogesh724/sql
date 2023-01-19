show databases;
use emp_data;
select * from emp_details;
select distinct city from emp_details;

create database sql_join;
use sql_join;
create table cricket(cricket_id int auto_increment,
name varchar(30),primary key(cricket_id));

create table football(football_id int auto_increment,
name varchar(30),primary key(football_id));

insert into cricket(name)
values ('stuart'),('micheal'),('jhonson'),('hayden'),('flemming');
select *from cricket;

insert into football(name)
values ('stuart'),('langer'),('jhonson'),('hayden'),('astel');
select * from football;

select *from cricket as c inner join
football as f on c.name=f.name;

select c.cricket_id,c.name,f.football_id,f.name
from cricket as c inner join football as f on 
c.name=f.name;

use emp_data;
show tables;
select * from emp_details;
select name,salary from emp_details
where salary < (select avg(salary)from emp_details;

show databases;
use mysql;
show tables;