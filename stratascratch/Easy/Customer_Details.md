Company: Amazon

Find the details of each customer regardless of whether the customer made an order. 
Output the customer's first name, last name, and the city along with the order details.
You may have duplicate rows in your results due to a customer ordering several of the same items. 
Sort records based on the customer's first name and the order details in ascending order.

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
select c.first_name, c.last_name, c.city, o.order_details
from customers c
left join orders o
on c.id = o.cust_id
order by c.first_name, o.order_details;
```
