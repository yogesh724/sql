show databases;
use avengers;
show tables;
select * from aveng_details;
create values in aveng_details (6,"groot","groot","planet x",25,"tree");

create database emp_data;
show databases;
use emp_data;
create table emp_details (Name varchar(25), Age int, sex char(1),
doj date, city varchar(15), salary float);

describe emp_details;
insert into emp_details
values("jimmy",35,"m","2005-05-30","chicago",70000),
("shane",30,"m","2005-06-14","seattle",79980),
("marry",28,"f","2009-05-12","boston",60000),
("dwayne",34,"m","2011-07-10","austin",57000),
("sara",32,"f","2012-03-27","new york",70000);

select * from emp_details;
select distinct city from emp_details;
select count(name) from emp_details;

select count(name) as count_name from emp_details;

select sum(salary) as total_salary from emp_details;

select avg(salary) as avg_salary from emp_details;

select name,age,city from emp_details;

select * from emp_details where age > 30;

select name,sex,city from emp_details where sex = "f";

select * from emp_details where city = "chicago" or city = "austin";

select * from emp_details where city in ("chicago",'austin');
select * from emp_details where city between 'chicago' and 'austin';
select * from emp_details where doj between '2000-02-01' and '2010-12-30';

select * from emp_details where age>30 and sex = 'm';

select sex, sum(salary) as total_salary from emp_details
group by sex;

select * from emp_details order by salary;
select *from emp_details order by salary desc;

select (10+20) as addition;
select (10-20)as substrat;

select repeat('@', 10);

select curdate();
select day(curdate());
select now();


#string function
select length('india') as total_leng;
select upper('india') as upper_case;
select lower('INDIA') as lower_case;
select lcase('INDIA') as lower_case;
select character_length('india')as total_len;

select name, char_length(name)as total_len from emp_details;

select concat("india"," is "," in asia") as merged; 
select ucase('india is in asia')as ucase;

select * from emp_details;

select name,age, concat(name, " ", age) as name_age from emp_details;

select reverse('India') as reverse_;

select reverse(name) from emp_details;

select replace("Orange is a vegetable", "vegetable", "fruit") as replace_word;

select ltrim("      India         ") as trim;
select length("      India         ");
select length(ltrim("      India         ")) as leng_trim;

select position("fruit" in "orange is a fruit")as name_position;

select ascii('a') as ascii_position;
select ascii(4);


 








