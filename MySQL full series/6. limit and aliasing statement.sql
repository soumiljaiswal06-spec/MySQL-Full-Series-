-- limit and aliasing 

select * 
from employee_demographics
order by age  desc  ;

select * 
from employee_demographics
order by age  desc  
limit 7;

select * 
from employee_demographics
order by age  desc  
limit 3 , 5;
-- skip 3 position and
-- print 5 rows after that 

-- aliasing
-- changing name of the coloumn 
select gender , avg(age) as avg_age 
from employee_demographics
group by gender 
having avg_age > 40 ;

-- still work without using AS 
select gender , avg(age)  avg_age 
from employee_demographics
group by gender 
having avg_age > 40 ;



