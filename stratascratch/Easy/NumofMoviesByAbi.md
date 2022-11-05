Company: Netflix

Count the number of movies that Abigail Breslin was nominated for an oscar.

oscar_nominees
- year: int
- category: varchar
- nominee: varchar
- movie: varchar
- winner: bool
- id: int


``` SQL
select count(movie) as n_movie_by_abi
from oscar_nominees
where nominee = 'Abigail Breslin';
```
