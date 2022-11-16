Company: Airbnb

Find the number of apartments per nationality that are owned by people under 30 years old.
Output the nationality along with the number of apartments.
Sort records by the apartments count in descending order.

<b> airbnb_hosts </b>
- host_id: int
- nationality: varchar
- gender: varchar
- age: int

<b> airbnb_units </b>
- host_id: int
- unit_id: varchar
- unit_type: varchar
- n_beds: int
- n_bedrooms: int
- country: varchar
- city: varchar

```SQL
select h.nationality, count(distinct u.unit_id) as apartment_count
from airbnb_hosts h join airbnb_units u on h.host_id = u.host_id
where h.age < 30 and u.unit_type = 'Apartment'
group by h.nationality
order by apartment_count desc;
```
