# Subqueries

[Open subquery sql](subqueries.sql)

> ## Where XX in (subquery)
>
> ```sql
> select *
> from employee_demographics
> where employee_id IN ( -- Where employee ID in demographic table is IN salary table
>   select employee_id
>   from employee_salary
>   where dept_id = 1 -- Where dept is 1
> )
>
> ```
>
> This is the `employee_demographics` table, only showing employees who have a `dept_id = 1` from `employee_salary` table
> ![](../Images/Subquery_where-in.png)

> ## Select (subquery)
>
> ```sql
> select first_name, salary, ( -- Open subquery
> 	select avg(salary) -- Select the average salary column (whole thing)
> 	from employee_salary -- From employee_salary
> ) as avg_salary  -- Close subquery
> from employee_salary
> ;
> ```
>
> ![](<../Images/select(subquery).png>)

> ## From (subquery)
>
> ```sql
> select *
> from (  -- Open subquery
> 	select gender,   -- Select these things (column averages)
>     avg(age) as avg_age,
>     max(age) as max_age,
>     min(age) as min_age,
>     count(age) as count_age
> 	from employee_demographics  -- From employee_demographics
> 	group by gender
>   ) as agg_table;  -- Need to name subquery here.
> ```
>
> ![](<../Images/from(subquery).png>)
