 -- Unions (defualt is union distinct )
 -- Union ALL shows all the matches
 select first_name , last_name 
 from employee_demographics
 union 
 select first_name , last_name
 from employee_salary
 ;
 select first_name , last_name 
 from employee_demographics
 union all
 select first_name , last_name
 from employee_salary
 ;
 
 -- LABEL
 select first_name , last_name , age ,
 'old' as label
 from employee_demographics
 where age >50
 ;
 
 
 
 select first_name , last_name ,'old man' as label
 from employee_demographics
 where age >40 and gender = 'Male'
 UNION
 select first_name , last_name , 'old lady' as label 
 from employee_demographics
 where age > 40 and gender = 'female'
 UNION
 select first_name , last_name , 'highly paid employee' as label
 from employee_salary
 where salary >70000
 order by first_name , last_name
 ;
 
 
 