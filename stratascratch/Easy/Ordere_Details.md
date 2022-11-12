Company: Amazon

Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order.

<b> customer </b>
- id: int
- first_name: varchar
- last_name: varchar
- city: varchar
- address: varchar
- phone_number: varchar

<b> orders </b>
- id: int
- cust_id: int
- order_date: datetime
- order_details: varchar
- total_order_cost: int


```SQL
select c.first_name, o.order_date, o.order_details, o.total_order_cost
from orders o, customers c
where o.cust_id = c.id
and c.first_name in ('Jill' , 'Eva')
order by c.id ;
```
