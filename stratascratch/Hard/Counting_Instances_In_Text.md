# General Practice from Google

Find the number of times the words 'bull' and 'bear' occur in the contents. 
We're counting the number of times the words occur so words like 'bullish' should not be included in our count.
Output the word 'bull' and 'bear' along with the corresponding number of occurrences.

**google_file_store**
- filename: varchar
- contents: varchar

```sql
with temp as (
    select 
    (LENGTH(contents) - LENGTH(REPLACE(contents, ' bull ',''))) / LENGTH(' bull ') as 'bull',
    (LENGTH(contents) - LENGTH(REPLACE(contents, ' bear ',''))) / LENGTH(' bear ') as 'bear'
    from google_file_store
)

select 'bull' as word, sum(bull) as nentry from temp
UNION ALL
select 'bear' as word, sum(bear) as nentry from temp
```
