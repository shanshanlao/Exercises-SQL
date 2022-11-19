## Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. 
The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

<b> OCCUPATIONS </b>
- Name: String
- Occupation: String

### MS SQL Server
```SQL
SELECT 
    [Doctor],[Professor],[Singer],[Actor]
FROM (
    SELECT 
        Name, 
        Occupation, 
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY name) as row_num
    FROM Occupations
    ) as src
PIVOT(
    MIN(Name) FOR [Occupation] IN ([Doctor],[Professor],[Singer],[Actor])
) as pvt
```

### MySQL
```SQL
SELECT 
    MIN(IF(Occupation = 'Doctor',Name,NULL)) as Doctor,
    MIN(IF(Occupation = 'Professor',Name,NULL)) as Prof,
    MIN(IF(Occupation = 'Singer',Name,NULL)) as Singer,
    MIN(IF(Occupation = 'Actor',Name,NULL)) as Actor
FROM (
    SELECT 
        Name, 
        Occupation, 
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY name) as row_num
    FROM Occupations
) as q1
GROUP BY row_num
```
