Company: Amazon

Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. 
If customer had more than one order on a certain day, sum the order costs on daily basis. 
Output customer's first name, total cost of their items, and the date.
For simplicity, you can assume that every first name in the dataset is unique.

**customers**
- id: int
- first_name: varchar
- last_name: varchar
- city: varchar
- address: varchar
- phone_number: varchar

**orders**
- id: int
- cust_id: int
- order_date: datetime
- order_details: varchar
- total_order_cost: int

Note: Instead of simply sort the result by descending order and apply "LIMIT 1", I used the following logic to make sure we capture **all** the customers with the highest daily total order cost.
```sql
with daily_total_order as (
    select distinct c.first_name, SUM(o.total_order_cost) as 'total_order', o.order_date 
    from customers c join orders o on c.id = o.cust_id 
    where o.order_date between '2019-02-01' and '2019-05-01'
    group by o.order_date, c.first_name
)
select *
from daily_total_order d
where d.total_order = (select max(total_order) from daily_total_order) ;
```
