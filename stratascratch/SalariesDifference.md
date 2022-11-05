## Salaries Differences
Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. 
Output just the absolute difference in salaries.

db_employee:
- id: int
- first_name: varchar
- last_name: varchar
- salary: int
- department_id: int

db_dept:
- id: int
- department: varchar

``` SQL
select abs(q1.mktMax - q2.engMax) as salary_difference
from (
        select max(e.salary) mktMax
        from db_dept d, db_employee e
        where d.id = e.department_id 
        and d.department = 'marketing') q1, 
    (
        select max(e.salary) engMax
        from db_dept d, db_employee e
        where d.id = e.department_id
        and d.department = 'engineering') q2;
```
