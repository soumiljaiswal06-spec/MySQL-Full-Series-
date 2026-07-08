-- STRING FUNCTIONS 
/*
CONCAT() — joins two or more strings.
UPPER() — converts text to uppercase.
LOWER() — converts text to lowercase.
LENGTH() / LEN() — returns the length of a string.
LEFT() — gets characters from the left side.
RIGHT() — gets characters from the right side.
SUBSTRING() / SUBSTR() — extracts part of a string.
TRIM() — removes leading and trailing spaces.
LTRIM() — removes leading spaces.
RTRIM() — removes trailing spaces.
REPLACE() — replaces one substring with another.
INSTR() / CHARINDEX() / LOCATE() — finds the position of a substring.
REVERSE() — reverses a string.
ASCII() — returns the ASCII value of the first character.
CHAR() — returns the character for a given ASCII code.
LPAD() — pads on the left.
PAD() — pads on the right.
ONCAT_WS() — concatenates strings with a separator.
TRANSLATE() — replaces multiple characters at once.
FORMAT() — formats text or numbers as a string.
*/


select length('tell you number of characters in it ');

select first_name , length(first_name) as totalcharacters  
from employee_demographics 
order by first_name ;

select upper('convert all characters into upper ' ) as upper ;
select lower ('	CONVERT ALL CHARACTERS INTO LOWER') as lower;

select first_name , upper(first_name) as uppercharacters  
from employee_demographics 
order by first_name ;

select first_name , lower(first_name) as lowercharacters  
from employee_demographics 
order by first_name ;

-- TRIM 
select trim('      extra space will be removed       ');
select ltrim('      extra space will be removed from left              ');
select rtrim('             extra space will be removed from right      ');

-- LEFT , RIGHT , SUBSTRING 
-- left(column name , number of characters)
-- right(column name , number of characters)
-- substring(column name , where to start , number of characters)
select first_name , 
left(first_name , 4) as left_characters , 
right (first_name ,4 ) as right_characters ,
substring(first_name , 3 , 2 ) as substring
from employee_demographics;

select birth_date , 
substring(birth_date, 6 ,2) as month_number
from employee_demographics;

-- REPLACE (replace the character you want)
select first_name , 
replace( first_name , 'a' , 'z') as replace_character
from employee_demographics;

-- LOCATE (give position of characters
select locate( 'x' , 'alexander');

select first_name , 
locate ('an' , first_name) as locate
from employee_demographics;

-- CONCAT ( combine strings ) 
select first_name , last_name , 
concat(first_name , '   ' , last_name) as full_name 
from employee_demographics;

