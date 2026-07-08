-- CASE STATEMENTS  
-- using label with conditions 

select  employee_id,
concat(first_name , '  ' , last_name) as full_name , 
case
	when age < 18  then 'children'
    when age between 18 and 30  then 'young'
    when age between 30 and 55 then ' old '
    when age >55  then ' on death door'
end as age_bracket
from employee_demographics;


-- question . increase of salary at new year 
-- pay increase and bonus 
-- <50000 = 5%  , >50000 =7%
-- finance 10% bonus 
select concat(first_name , '  ' , last_name) as full_name ,
case 
		when salary >50000 then salary * 1.07
        when salary <50000 then salary * 1.05
        when salary = 50000 then salary *1.06
end as pay_increase ,
case 
		when dept_id = '6' then salary *0.10
end as bonus 
from employee_salary;

