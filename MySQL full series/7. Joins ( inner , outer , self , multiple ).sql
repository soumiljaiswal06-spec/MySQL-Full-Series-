-- JOINS

-- INNER JOIN 
select * 
from employee_demographics as dem 
inner join employee_salary as sal 
	on dem.employee_id = sal.employee_id
;

select dem.employee_id , age , occupation
from employee_demographics as dem 
inner join employee_salary as sal 
	on dem.employee_id = sal.employee_id
;

-- OUTER JOIN 
-- LEFT OUTER JOIN  take everything from left then matches to right 
-- RIGHT OUTER JOIN take everything from right then matches to left 

select * 
from employee_demographics as dem
left join employee_salary as sal 
	 on dem.employee_id = sal.employee_id
;

select * 
from employee_demographics as dem
right join  employee_salary as sal 
	 on dem.employee_id = sal.employee_id
;

-- SELF JOIN 

select * 
from employee_salary as emp1 
join employee_salary as emp2 
	on emp1.employee_id = emp2.employee_id
;

select * 
from employee_salary as emp1 
join employee_salary as emp2 
	on emp1.employee_id +1 = emp2.employee_id
;

select emp1.employee_id as emp_santa ,
emp1.first_name as first_name_santa ,
emp1.last_name as last_name_santa ,
emp2.employee_id as emp_santa ,
emp2.first_name as first_name_santa ,
emp2.last_name as last_name_santa 
from employee_salary emp1 
join employee_salary emp2 
	on emp1.employee_id +1 = emp2.employee_id
;


-- JOINING MULTIPLE TABLES TOGETHER 

select * from parks_departments;

select *
from employee_demographics as dem
inner join employee_salary as sal 
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd 
	on sal.dept_id = pd.department_id
;

