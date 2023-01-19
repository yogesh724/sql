show databases;
use sql_hr;

show tables;
select * from employees;
select * from offices;
#inner join
select * from employees as e inner join offices as o 
on e.office_id=o.office_id group by employee_id;
#inner join
select e.employee_id,e.office_id,e.first_name from employees as e
inner join offices as o on e.office_id=o.office_id ;
#left join
select e.employee_id,e.office_id,e.first_name,e.last_name 
from employees as e left join offices as o
on e.office_id=o.office_id order by employee_id;
#right join
select o.office_id,o.address,o.city from offices as o
right join employees as e
on o.office_id=e.office_id order by office_id;
#self joins
select concat(m.first_name,',',m.last_name) as manager,
concat(e.first_name,',',e.last_name) as employee
from employees as e inner join employees as m on m.employee_id=e.reports_to 
order by manager;
#full joins 

use sql_store;
select * from customers;
select * from orders;

select c.first_name,o.order_id from customers as c left join orders as o
on c.customer_id =o.customer_id
union
select c.first_name,o.order_id from customers as c right join orders as o
on c.customer_id=o.customer_id;
