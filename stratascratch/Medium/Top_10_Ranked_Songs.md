Company: Spotify

What were the top 10 ranked songs in 2010?
Output the rank, group name, and song name but do not show the same song twice.
Sort the result based on the year_rank in ascending order.

**billboard_top_100_year_end**
- year: int
- year_rank: int
- group_name: varchar
- artist: varchar
- song_name: varchar
- id: int

```sql
select distinct year_rank as 'rank', group_name, song_name
from billboard_top_100_year_end
where year = 2010 and year_rank between 1 and 10
order by year_rank;
```
