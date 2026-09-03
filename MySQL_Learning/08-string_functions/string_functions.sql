-- String Functions
select length('skyfall');

select first_name, length(first_name) as name_length
from employee_demographics
order by name_length;

select upper('skyfall');

select lower('SkYfAlL');

select first_name, upper(first_name) as first_name_upper
from employee_demographics
order by first_name_upper;

select trim('         skyfall            ') as trim;
select ltrim('         skyfall            ') as ltrim;
select rtrim('         skyfall            ') as rtrim;

select first_name, 
left(first_name, 4), 
right(first_name, 4), 
substring(first_name,3,2), 
birth_date, 
substring(birth_date, 6,2) as birth_month
from employee_demographics;

select first_name, replace(first_name, 'a', 'z') -- In first_name, replace 'a' with 'z'
from employee_demographics;

select locate('a', 'Landon'); -- Locate the first 'a' in 'Landon'

select first_name, locate('An', first_name) -- In first_name, replace 'a' with 'z'
from employee_demographics;

select first_name, last_name,
concat(first_name, ' ', last_name) as full_name
from employee_demographics;