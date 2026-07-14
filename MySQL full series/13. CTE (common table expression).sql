-- CTEs (common table expressin)
-- more professional than subquiry 

with cte_example (gender , avg_sal , max_sal , min_salary , count_salary) as 
(
select gender , avg(salary) , max(salary), min(salary) , count(salary)
from employee_demographics dem 
join employee_salary sal 
	on dem.employee_id = sal.employee_id
group by gender 
)
select *
from cte_example
;

-- with subquiry 

select * from 
(
select gender , avg(salary) , max(salary), min(salary) , count(salary)
from employee_demographics dem 
join employee_salary sal 
	on dem.employee_id = sal.employee_id
group by gender 
) as example_subquery;



with cte_example as 
(
 select  employee_id , first_name , gender 
from employee_demographics
where birth_date > ' 1985-01-01 '
) ,
cte_example2 as 
(
select * 
from employee_salary
where salary > 50000
)
select * 
from cte_example
join cte_example2
	on cte_example.employee_id = cte_example2.employee_id
;






