## General Practice Question by Lyft: Lyft Driver Wages

Find all Lyft drivers who earn either equal to or less than 30k USD or equal to or more than 70k USD.
Output all details related to retrieved records.

<b> lyft_drivers </b>
- index: int
- start_date: datetime
- end_date: datetime
- yearly_salary: int

```SQL
select * 
from lyft_drivers
where yearly_salary <= 30000 OR yearly_salary >= 70000;
```
