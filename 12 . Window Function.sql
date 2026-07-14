-- WINDOW FUNCTONS 

select gender , avg(salary) as  avg_salary 
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender ;

select avg(salary) 
from employee_demographics  dem 
join employee_salary  sal
on dem.employee_id = sal.employee_id;

-- Main 

select  gender , avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id ;

select  gender , concat(dem.first_name ,'  ' , dem.last_name  ) as full_name , salary ,
avg(salary) over(partition by gender order by dem.employee_id) as rolling_total 
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id ;
 
-- row_number() is simple but 
-- rank() is giving ranks 
-- in rank it is skipping 6 in the male 
-- in dense_rank it will not skip 6
select  dem.employee_id , dem.first_name , dem.last_name , gender , salary , 
row_number() over(partition by gender order by salary desc)  as row_num ,
rank()  over(partition by gender order by salary desc)  as rank_num ,
dense_rank()  over(partition by gender order by salary desc)  as dense_rank_num 
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id ;


    
