Company: Apple

Count the number of user events performed by MacBookPro users.
Output the result along with the event name.
Sort the result based on the event count in the descending order.

<b> playbook_events </b>
- user_id: int
- occurred_at: datetime
- event_type: varchar
- event_name: varchar
- location: varchar
- device: varchar

```SQL
select event_name, count(*) as event_count
from playbook_events
where device = 'macbook pro'
group by event_name
order by event_count desc;
```
