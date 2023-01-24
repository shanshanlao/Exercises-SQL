# Host Popularity Rental Prices - Interview Question by Airbnb

You’re given a table of rental property searches by users. The table consists of search results and outputs host information for searchers. Find the minimum, average, maximum rental prices for each host’s popularity rating. The host’s popularity rating is defined as below:
0 reviews: New
1 to 5 reviews: Rising
6 to 15 reviews: Trending Up
16 to 40 reviews: Popular
more than 40 reviews: Hot

Tip: The id column in the table refers to the search ID. 
You'll need to create your own host_id by concating price, room_type, host_since, zipcode, and number_of_reviews.

Output host popularity rating and their minimum, average and maximum rental prices.

```sql
with temp as 
(select
    CASE 
        WHEN number_of_reviews = 0 THEN 'New'
        WHEN number_of_reviews > 0 AND number_of_reviews <= 5 THEN 'Rising'
        WHEN number_of_reviews > 5 AND number_of_reviews <= 15 THEN 'Trending Up'
        WHEN number_of_reviews > 15 AND number_of_reviews <= 40 THEN 'Popular'
        ELSE 'Hot'
    END AS 'host_pop_rating',
    CONCAT(price, '_', room_type, '_', host_since, '_',
            zipcode,'_', number_of_reviews) as 'host_id',
    price
from airbnb_host_searches
group by host_id)

select host_pop_rating, MIN(price) as 'min_price', AVG(price) as 'avg_price', MAX(price) as 'max_price'
from temp
group by host_pop_rating
;
```
