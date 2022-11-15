Company: Airbnb

Rank guests based on the number of messages they've exchanged with the hosts. 
Guests with the same number of messages as other guests should have the same rank. 
Do not skip rankings if the preceding rankings are identical.
Output the rank, guest id, and number of total messages they've sent. 
Order by the highest number of total messages first.

<b> airbnb_contacts </b>
- id_guest: varchar
- id_host: varchar
- id_listing: varchar
- ts_contact_at: datetime
- ts_reply_at: datetime
- ts_accepted_at: datetime
- ts_booking_at: datetime
- ds_checkin: datetime
- ds_checkout: datetime
- n_guests: int
- n_messages: int

```SQL
WITH temp AS (
    select id_guest, sum(n_messages) as sum_n_messages
    from airbnb_contacts
    group by id_guest)

select DENSE_RANK() OVER( ORDER BY sum_n_messages DESC) as ranking,
    id_guest,
    sum_n_messages
from temp;
```
