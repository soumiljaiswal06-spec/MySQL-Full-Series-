SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT last_name , age , gender , (age+10)*10 as ages 
FROM parks_and_recreation.employee_demographics;
#PEMDAS  

SELECT DISTINCT gender ,first_name
FROM parks_and_recreation.employee_demographics;