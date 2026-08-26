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
