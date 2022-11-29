Company: Dropbox

Find employees who are earning more than their managers. Output the employee's first name along with the corresponding salary.

**employee**
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
select e1.first_name, e1.salary
from employee e1
join employee e2 on e1.manager_id = e2.id 
where e1.salary > e2.salary;
```
