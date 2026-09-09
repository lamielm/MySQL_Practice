-- Subqueries

select *
from employee_demographics
where employee_id IN ( -- Where employee ID in demo table is IN sal table
	select employee_id
    from employee_salary
    where dept_id = 1  -- Where dept is 1
)
;

select first_name, salary, ( -- No "IN" here...
	select avg(salary) -- Select the average salary ROW (whole thing)
	from employee_salary
) as avg_salary  -- From employee_salary
from employee_salary
;

select gender, 
avg(age) as avg_age, 
max(age) as max_age, 
min(age) as min_age, 
count(age) as count_age
from employee_demographics
group by gender;

select *
from (  -- Open subquery
	select gender,   -- Select these things (column averages)
    avg(age) as avg_age, 
    max(age) as max_age, 
    min(age) as min_age, 
    count(age) as count_age
	from employee_demographics  -- From employee_demographics
	group by gender
) as agg_table;  -- Need to name subquery here.
