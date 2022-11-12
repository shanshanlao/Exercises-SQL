## General Practice Question by Spotify: Find how many times each artist appeared on the Spotify ranking list

Find how many times each artist appeared on the Spotify ranking list.
Output the artist name along with the corresponding number of occurrences.
Order records by the number of occurrences in descending order.

<b> spotify_worldwide_daily_song_ranking </b>
- id: int
- position: int
- trackname: varchar
- artist: varchar
- streams: int
- url: varchar
- date: datetime
- region: varchar

```SQL
select artist, COUNT(*) as n_occurences
from spotify_worldwide_daily_song_ranking
group by artist
order by n_occurences desc;
```
