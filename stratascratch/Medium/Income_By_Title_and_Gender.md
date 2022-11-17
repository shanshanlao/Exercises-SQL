Company: City of San Fracisco

Find the average total compensation based on employee titles and gender. 
Total compensation is calculated by adding both the salary and bonus of each employee. 
However, not every employee receives a bonus so disregard employees without bonuses in your calculation. 
Employee can receive more than one bonus.
Output the employee title, gender (i.e., sex), along with the average total compensation.

<b> sf_employee </b>
- id: int
- first_name: varchar
- last_name: varchar
- age: int
- sex: varchar
- employee_title: varchar
- department: varchar
- salary: int
- target: int
- email: varchar
- city: varchar
- address: varchar
- manager_id: int

<b> sf_bonus </b>
- worker_ref_id: int
- bonus: int

```SQL
select e.employee_title, e.sex, avg(salary+bonus) as avg_compensation 
from sf_employee e
join (select worker_ref_id, sum(bonus) as bonus
        from sf_bonus
        group by worker_ref_id) b
on e.id = b.worker_ref_id
group by e.employee_title, e.sex;
```
