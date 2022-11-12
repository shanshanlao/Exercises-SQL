Company: Airbnb

Find the average number of bathrooms and bedrooms for each city’s property types. Output the result along with the city name and the property type.

<b> airbnb_search_details </b>
- id: int
- price: float
- property_type: varchar
- room_type: varchar
- amenities: varchar
- accommodates: int
- bathrooms: int
- bed_type: varchar
- cancellation_policy: varchar
- cleaning_fee: bool
- city: varchar
- host_identity_verified: varchar
- host_response_rate: varchar
- host_since: datetime
- neighbourhood: varchar
- number_of_reviews: int 
- review_scores_rating: float
- zipcode: int
- bedrooms: int
- beds: int

```SQL
select city, property_type, avg(bathrooms), avg(bedrooms)
from airbnb_search_details
group by city, property_type
order by city;
```
