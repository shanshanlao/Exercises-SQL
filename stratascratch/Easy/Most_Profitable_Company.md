Company: Forbes

Find the most profitable company in the financial sector of the entire world along with its continent.

<b> forbes_global_2010_2014 </b>
- company: varchar
- sector: varchar
- industry: varchar
- continent: varchar
- country: varchar
- marketvalue: float
- sales: float
- profits: float
- assets: float
- rank: int
- forbeswebpage: varchar

```SQL
select company,continent
from forbes_global_2010_2014
where sector = 'Financials'
and profits = (select MAX(profits) frp from forbes_global_2010_2014);
```
