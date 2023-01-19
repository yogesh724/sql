# subqury 
#select statement

use sql_intro;
select * from employees;
use emp_data;
select * from emp_details;

select name,city,salary from emp_details
 where salary < (select avg(salary) from emp_details);
 
 # insert statement in subquery
 create table products
(prod_id int, item varchar(30),sell_price float, product_type varchar(30));

insert into products
values(101, 'jewwllery',1800,'luxury'),
(102,'t-shirt',100,'non-luxury'),
(103,'laptop',1300,'luxury'),
(104,'table',400,'non-luxury');

select * from products;
create table orders (order_id int, product_sold varchar(30),selling_price float);
insert into orders select prod_id,item,sell_price from products where 
prod_id in (select prod_id from products where sell_price >1000);
select * from orders;

# updatestatement in subquery
select * from employees;
select * from employees_d;

update employees
set salary =salary * 0.36 where age in (select age from employees_b where age>=27);

#delete statement

delete from employees where age in (select age from employee_c where age>=32);

