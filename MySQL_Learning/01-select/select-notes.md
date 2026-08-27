# Using SELECT

[Open SELECT sql](Select.sql)

## Select everything

```sql
SELECT *  --The * selects ALL columns in db
FROM employee_demographics;
```

## Select specific columns:

```sql
SELECT first_name,
last_name,
birth_date   -- Putting each column on it's own row isn't needed, but may be easier to read.
FROM employee_demographics;
```

## Select distinct items

Since there are several different people, but only two distinct genders, the code below will remove duplicate results.

```sql
select distinct gender  -- DISTINCT = "Only show me each unique value once"
from employee_demographics;
```

![Image](../Images/Distint%20Ex.png "distinct Example")
