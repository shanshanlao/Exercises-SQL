# Interview Question by Meta/Facebook

Find the popularity percentage for each user on Meta/Facebook. 
The popularity percentage is defined as the total number of friends the user has divided by the total number of users on the platform, then converted into a percentage by multiplying by 100.
Output each user along with their popularity percentage. 
Order records in ascending order by user id.
The 'user1' and 'user2' column are pairs of friends.

**facebook_friends**
- user1: int
- user2: int

```sql
select user1, COUNT(distinct user2) / (select count(distinct concat(user1,user2)) from facebook_friends) * 100 as popularity_percent
from
(
    select user1,user2
    from facebook_friends
    UNION
    select user2,user1
    from facebook_friends
) q
group by user1
order by user1
```
