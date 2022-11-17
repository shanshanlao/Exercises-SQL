Company: Meta/Facebook

Find the date with the highest total energy consumption from the Meta/Facebook data centers. 
Output the date along with the total energy consumption across all data centers.

<b> fb_eu_energy </b>
- date: datetime
- consumption: int

<b> fb_asia_energy </b>
- date: datetime
- consumption: int

<b> fb_na_energy </b>
- date: datetime
- consumption: int

```SQL
with data_centers as 
(   select distinct date, sum(consumption) as total_energy
    from(
        select * from fb_eu_energy e 
        union 
        select * from fb_asia_energy a 
        union
        select * from fb_na_energy n
    ) q
    group by date
)

select * from data_centers
where total_energy = (select max(total_energy) from data_centers)
```
