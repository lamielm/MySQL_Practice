# Using Group By

[Open Group_by.Order_by sql](group_by.order_by-notes.md)

> ## Group table by gender
>
> Note that in the select statement, you have aggregate (mathematical) functions. If they aren't an aggregate function, you would need the column in the select statement AND group by (like gender)
>
> ```sql
> select gender, avg(age), max(age), min(age), count(age)  -- The statements with () are aggregate functions
> from employee_demographics
> group by gender;
> ```
>
> ![](../Images/Group%20by%20gender.png)

> ## Order table by first name (ascending)
>
> ```sql
> select *
> from employee_demographics
> order by first_name; -- Without anything typed, this is ascending (ASC) from A to Z
> ```
>
> ![](../Images/Order%20By.png)

> ## Order table by gender then by age (descending)
>
> ```sql
> select *
> from employee_demographics
> order by gender, age;
> ```
>
> Note that the table is ordered by gender, then descending (desc) age.
> ![](../Images/Order%20by%20gen,%20age%20desc.png)
