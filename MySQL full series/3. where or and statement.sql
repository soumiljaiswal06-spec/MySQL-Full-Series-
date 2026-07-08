SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE age >30;

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary>=50000;

SELECT * 
FROM employee_demographics
WHERE gender="male";

SELECT * 
FROM employee_demographics
WHERE birth_date>"1985-01-01"
and  not gender='male';

SELECT * 
FROM employee_demographics
WHERE birth_date>"1985-01-01"
or not gender='male';

SELECT * 
FROM employee_salary
WHERE salary >=50000 and dept_id =1;

SELECT *  
FROM employee_demographics
WHERE ( first_name='jerry' and gender='male') or age<40;

-- LIKE statement 
-- % and _

SELECT *  
FROM employee_demographics
WHERE first_name LIKE 'JER%' ;

SELECT *  
FROM employee_demographics
WHERE first_name LIKE '%ER%' ;

SELECT *  
FROM employee_demographics
WHERE first_name LIKE 'a%' ;

SELECT *  
FROM employee_demographics
WHERE birth_date LIKE '1989%' ;
