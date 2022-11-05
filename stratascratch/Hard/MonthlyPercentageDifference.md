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

```
