show databases;
use sql_intro;

show tables;

create table employees (Emp_id int primary key, emp_name varchar(25),
age int, gender char(1), Doj date, dept varchar(20), city varchar(20), salary float);
describe employees;

insert into employees
values(101,"jimmy",35,"m","2005-05-30","sales","chicago",70000),
(102,"shane",30,"m","2005-06-14","marketing","seattle",79980),
(103,"marry",28,"f","2009-05-12","product","boston",60000),
(104,"dwayne",34,"m","2011-07-10","tech","austin",57000),
(105,"sara",32,"f","2012-03-27","sales","new york",70000);

select * from employees;
select distinct city from employees;
select distinct dept from employees;
select avg(age) from employees;

#avg age in each dept
select dept, avg(age) as average_age from employees group by dept;
select dept, round(avg(age),1) as average_age from employees group by dept;

select dept, sum(salary) as total_salary from employees group by dept;

select count(emp_id) as ascend_order, city from employees group by city;

select count(emp_id) as descend_order, city from employees group by city 
order by count(emp_id);
select count(emp_id) as descend_order, city from employees group by city 
order by count(emp_id)desc;

select year(doj) as year, count(emp_id)as count from employees group by year(doj);

create table sales (product_id int, sell_price float, quantity int, state varchar(20));
insert into sales
values(121, 320.0, 3, 'california'),
(122, 320.0, 3, 'texas'),
(123, 320.0, 4, 'alaska'),
(124, 320.0, 5, 'texas'),
(125, 320.0, 7, 'california'),
(126, 320.0, 8, 'washington'),
(127, 320.0, 10, 'ohoi'),
(128, 320.0, 5, 'arizona');

describe sales;
select * from sales;
select product_id, sum(sell_price * quantity) as revenue from sales group by product_id;
create table c_product (product_id int, cost_price float);
insert into c_product
values(121, 270.0),
(123,250.0);

select c.product_id, sum((s.sell_price - c.cost_price) * s.quantity) from sales 
as s inner join c_product as c where s.product_id = c.product_id
group by c.product_id;
use sql_intro;
select * from employees;
select dept, avg(salary) as avg_salary from employees
group by dept having avg(salary) > 75000;

select city, sum(salary) as total from employees
group by city having sum(salary) > 20000;

select dept, count(*) as emp_count from employees 
group by dept having count(*) > 1;

select city, count(*) as emp_count from employees
where city != "houston" group by city
having count(*) >2;

select dept,count(*) as emp_count from employees
group by dept having avg(salary) > 75000;







