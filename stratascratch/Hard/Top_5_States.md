# Interview Question by Yelp

Find the top 5 states with the most 5 star businesses. 
Output the state name along with the number of 5-star businesses and order records by the number of 5-star businesses in descending order. 
In case there are ties in the number of businesses, return all the unique states. 
If two states have the same result, sort them in alphabetical order.

**yelp_business**
- business_id: varchar
- name: varchar
- neighborhood: varchar 
- address: varchar
- city: varchar
- state: varchar
- postal_code: varchar 
- latitude: float
- longitude: float
- stars: float
- review_count: int
- is_open: int
- categories: varchar

```sql
with temp as (
    select state, 
        rank() over(order by count(business_id) desc) as state_rank, 
        count(business_id) as n_business
    from yelp_business
    where stars = 5
    group by state
)

select state, n_business
from temp
where state_rank <= 5
order by n_business desc, state 
```
