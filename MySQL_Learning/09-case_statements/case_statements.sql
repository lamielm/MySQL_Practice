-- Case Statements

select first_name, last_name, -- You need this comma for the case statement
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old' -- Note the 'between' keyword...
    when age >= 50 then "On Death's Door"
end as age_bracket -- Name the case row here
from employee_demographics;

-- Pay increase
-- If pay < 50,000 = 5% raise
-- If pay > 50,000 = 7% raise
-- If dept is finance = 10% BONUS
select first_name, last_name, salary,
case
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
end as new_salary,
case
	when dept_id = 6 then salary * .1 -- dept 6 is finance
end as BONUS
from employee_salary;

select *
from employee_salary;