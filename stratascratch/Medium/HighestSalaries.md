## Interview Question by Doordash: Workers With The Highest Salaries

Find the titles of workers that earn the highest salary. Output the highest-paid title or multiple titles that share the highest salary.

<b> worker </b>
- worker_id: int
- first_name: varchar
- last_name: varchar
- salary: int
- joining_date: datetime
- department: varchar

<b> title </b>
- worker_ref_id: int
- worker_title: varchar
- affected_from: datetime

```SQL
select worker_title as best_paid_title
from title t, worker w
where t.worker_ref_id = w.worker_id
and w.salary = (select max(salary) from worker)
order by best_paid_title;
```
