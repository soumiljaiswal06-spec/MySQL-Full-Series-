-- SUBQUERIES ( queriy within query) 

select *
from employee_demographics
where employee_id in 
	( select employee_id
    from employee_salary 
    where dept_id = 1)
;

select first_name , salary , 
(select avg(salary)
 from employee_salary) as avg_salary,
 case 
		when salary > (select avg(salary) from employee_salary) then 'high'
        when salary < (select avg(salary) from employee_salary) then 'low' 
end as lower_or_higher
from employee_salary;


