select sum(salary) as fullsalary
from parks_and_recreation.employee_salary
group by salary;

select gender 
from parks_and_recreation.employee_demographics
group by gender;


select occupation, avg(salary)
from employee_salary
group by occupation;

-- avg -- max -- min -- count 
select gender ,avg(age) , max(age) , min(age), count(age)
from parks_and_recreation.employee_demographics
group by gender;

-- order by 
select * 
from employee_demographics
order by  first_name ;
select * 
from employee_demographics
order by  age ASC;
select * 
from employee_demographics
order by  age DESC;


select * 
from employee_demographics
order by  gender ,age  ;

-- position of coloumn
select * 
from employee_demographics
order by  5 ,4 ;





