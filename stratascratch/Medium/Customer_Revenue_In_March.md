Compmany: Meta/Facebook

Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019.
Output the revenue along with the customer id and sort the results based on the revenue in descending order.

**orders**
- id: int
- cust_id: int
- order_date: datetime
- order_details: varchar
- total_order_cost: int

```sql
select cust_id, sum(total_order_cost) as 'revenue'
from orders
where DATE_FORMAT(order_date, '%Y-%m') = '2019-03'
group by cust_id
order by revenue desc;
```
