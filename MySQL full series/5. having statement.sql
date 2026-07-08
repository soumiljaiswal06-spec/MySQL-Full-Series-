-- gives error -- becuase we have to use
-- group by first then where ( condition ) second  
select gender , avg(age ) 
from employee_demographics
where avg( age) >40
group by gender ;

-- not error 
-- we use group by first then use HAVING STATEMENT 
select gender , avg(age) 
from parks_and_recreation.employee_demographics
group by gender 
having avg(age) >40;

-- using having and where together 
select occupation , avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary)>75000;

