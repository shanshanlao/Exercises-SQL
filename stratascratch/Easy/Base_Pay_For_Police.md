## Find the base pay for Police Captains

Company: City of San Francisco 

Find the base pay for Police Captains.
Output the employee name along with the corresponding base pay.

<b> sf_public_salaries </b>
- id: int
- employeename: varchar
- jobtitle: varchar
- basepay: float
- overtimepay: float
- otherpay: float
- benefits: float
- totalpay: float
- totalpaybenefits: float
- year: int
- notes: datetime
- agency: varchar
- status: varchar

```SQL
select employeename, basepay
from sf_public_salaries
where jobtitle = 'CAPTAIN III (POLICE DEPARTMENT)';
```
