show databases;
use emp_data;
show tables;
select * from emp_details;
select distinct city from emp_details;
select count(name) from emp_details;

select sum(salary) as total_salary from emp_details;
select * from emp_details where age>=25 and sex='m';
select sex, sum(salary)as Total_salary from emp_details group by sex;
select name,sex,city from emp_details where sex='f';
 use sql_hr;
 select * from employees;
 select * from employees where salary=(select max(salary) from employees);
 select * from employees where salary=(select min(salary) from employees);