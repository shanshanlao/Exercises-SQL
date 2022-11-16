Company: Aribnb

Find matching hosts and guests pairs in a way that they are both of the same gender and nationality.
Output the host id and the guest id of matched pair.

<b> airbnb_hosts </b>
- host_id: int
- nationality: varchar
- gender: varchar
- age: int

<b> airbnb_guests </b>
- guest_id: int
- nationality: varchar
- gender: varchar 
- age: int

```SQL
select distinct h.host_id, g.guest_id
from airbnb_hosts h join airbnb_guests g
on h.nationality = g.nationality
and h.gender = g.gender;
```
