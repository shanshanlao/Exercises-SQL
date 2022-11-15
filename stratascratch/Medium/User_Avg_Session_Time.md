## Interview Question by Meta/Facebook: Users By Average Session Time

Calculate each user's average session time. A session is defined as the time difference between a page_load and page_exit. For simplicity, assume a user has only 1 session per day and if there are multiple of the same events on that day, consider only the latest page_load and earliest page_exit. Output the user_id and their average session time.

<b> facebook_web_log </b>
- user_id: int
- timestamp: datetime
- action: varchar

```SQL
select user_id, avg(TIMESTAMPDIFF(SECOND, last_page_load, first_page_exit)) as avg
from(
     select Date(timestamp) as day, user_id, 
       MAX(IF(action = 'page_load', timestamp, NULL)) as last_page_load,
       MIN(IF(action = 'page_exit', timestamp, NULL)) as first_page_exit
     from facebook_web_log
     group by day, user_id
 ) q
group by user_id
having avg IS NOT NULL;
```
