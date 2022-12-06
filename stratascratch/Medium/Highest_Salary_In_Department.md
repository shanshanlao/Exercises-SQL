Company: Twitter

Find the employee with the highest salary per department.
Output the department name, employee's first name along with the corresponding salary.

**employees**
- id: int
- first_name: varchar
- last_name: varchar
- age: int
- sex: varchar
- employee_title: varchar
- department: varchar
- salary: int
- target: int
- bonus: int
- email: varchar
- city: varchar
- address: varchar
- manager_id: int

```sql
with temp as(
    select max(salary) as 'salary', department
    from employee
    group by department
)

select e.department, e.first_name as 'employee_name', e.salary
from temp t join employee e
on e.salary = t.salary 
and e.department = t.department
```
