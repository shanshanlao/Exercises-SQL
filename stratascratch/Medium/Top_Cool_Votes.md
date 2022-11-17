Company: Yelp

Find the review_text that received the highest number of  'cool' votes.
Output the business name along with the review text with the highest numbef of 'cool' votes.

<b> yelp_reviews </b>
- business_name: varchar
- review_id: varchar
- user_id: varchar
- stars: varchar
- review_date: datetime
- review_text: varchar
- funny: int
- useful: int
- cool: int

```SQL
with temp as (
    select business_name, review_text, sum(cool) as cool_count
    from yelp_reviews
    group by review_text
)

select business_name, review_text
from temp
where cool_count = (select max(cool_count) from temp)
```
