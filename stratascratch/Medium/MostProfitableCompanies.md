Company: Forbes

Find the 3 most profitable companies in the entire world.
Output the result along with the corresponding company name.
Sort the result based on profits in descending order.


<b> Table: forbes_global_2010_2014 </b>
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


``` SQL
select company, profits 
from forbes_global_2010_2014
order by profits desc
limit 3;
```
