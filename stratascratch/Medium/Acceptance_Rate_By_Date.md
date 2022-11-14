Company: Meta/Facebook

What is the overall friend acceptance rate by date? Your output should have the rate of acceptances by the date the request was sent. Order by the earliest date to latest.


Assume that each friend request starts by a user sending (i.e., user_id_sender) a friend request to another user (i.e., user_id_receiver) that's logged in the table with action = 'sent'. 
If the request is accepted, the table logs action = 'accepted'. 
If the request is not accepted, no record of action = 'accepted' is logged.

<b> fb_friend_requests </b>
- user_id_sender: varchar
- user_id_receiver: varchar
- date: datetime
- action: varchar

```SQL
select f1.date, (count(f2.user_id_receiver) / count(f1.user_id_sender)) as percentage_acceptance
from (select * from fb_friend_requests where action = 'sent') f1
left join
    (select * from fb_friend_requests where action = 'accepted') f2
on f1.user_id_sender = f2.user_id_sender
and f1.user_id_receiver = f2.user_id_receiver
group by f1.date;
```
