Company: Amazon

Write a query that'll identify returning active users. 
A returning active user is a user that has made a second purchase within 7 days of any other of their purchases. 
Output a list of user_ids of these returning active users.

<b> amazon_transactions </b>
- id: int
- user_id: int
- item: varchar
- created_at: datetime
- revenue: int

```SQL
select distinct a1.user_id
from amazon_transactions a1 
join amazon_transactions a2 
    on  a1.user_id = a2.user_id
    and a1.id <> a2.id              -- not the same transaction 
    and a1.created_at >= a2.created_at
where datediff(a1.created_at, a2.created_at) <= 7;
```
