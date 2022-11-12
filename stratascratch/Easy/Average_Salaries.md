Company: Salesforce

Compare each employee's salary with the average salary of the corresponding department.
Output the department, first name, and salary of employees along with the average salary of that department.

<b> employee </b>
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

```SQL
select e.department, e.first_name, e.salary, q.avg
from employee e
join (select avg(salary) as avg, department
                from employee
                group by department) q
on e.department = q.department
order by e.department, e.salary;
``` 

#### Using Windows Function
```SQL
select department, first_name, salary, 
        avg(salary) over(partition by department) as avg_salary
from employee;
```
