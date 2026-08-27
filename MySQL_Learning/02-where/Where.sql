-- Where Clause

select *
from employee_salary
where first_name = 'Leslie';

select *
from employee_demographics
where gender != 'Male';

select *
from employee_salary
where salary >= 50000;

select *
from employee_demographics
where birth_date > '1985-01-01'
and gender = 'Male';

select *
from employee_demographics
where birth_date > '1985-01-01'
or gender = 'Male';

select *
from employee_demographics
where birth_date > '1985-01-01'
or not gender = 'Male';

select *
from employee_demographics
where (first_name = 'Leslie' AND age = 44)
or age > 55;

-- Like statement
select *
from employee_demographics
where first_name like 'a%';  -- Starts with A, but can end with any number of characters

select *
from employee_demographics
where first_name like '%a';  -- Ends with A, but can start with any number of characters

select *
from employee_demographics
where first_name like '%a%';  -- There is an A somewhere, but doesn't matter where

select *
from employee_demographics
where first_name like 'a__'; -- Start with A, and has two characters that follow

select *
from employee_demographics
where first_name like 'a___'; -- Start with A, and has three characters that follow

select *
from employee_demographics
where first_name like 'a___%'; -- Start with A, and has three characters that follow but can be more than that
