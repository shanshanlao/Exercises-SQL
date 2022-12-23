## Interview Question by Amazon: Monthly Percentage Difference

Given a table of purchases by date, calculate the month-over-month percentage change in revenue. 
The output should include the year-month date (YYYY-MM) and percentage change, rounded to the 2nd decimal point, and sorted from the beginning of the year to the end of the year.</br>
</br> The percentage change column will be populated from the 2nd month forward and can be calculated as ((this month's revenue - last month's revenue) / last month's revenue)*100.

<b> sf_transactions </b>
- id: int
- created_at: datetime
- value: int
- purchase_id: int

```SQL
-- 1. first extract the date value as yyyy-mm as aggregate the value based on month
with temp as 
(select sum(q.value) as month_revenue, q.year_month
 from (select 
        DATE_FORMAT(created_at, "%Y-%m") as 'year_month', 
        value
       from sf_transactions) q
  group by q.year_month)

-- 3. calculate the monthly percentage
select q2.year_month, round((month_revenue - pre_revenue)/pre_revenue*100,2) as 'revenue_diff_pct'
from(
    select *, lag(month_revenue,1) OVER() as 'pre_revenue' -- 2. then get the revenue from previous month
    from temp) q2
```

### Simplified Query
```sql
select 
        DATE_FORMAT(created_at, "%Y-%m") as ym, 
        ROUND( (sum(value) - LAG(sum(value)) OVER()) 
                / LAG(sum(value)) OVER() *100,2 ) as 'revenue_diff_pct'
from sf_transactions
group by ym
order by ym
```
