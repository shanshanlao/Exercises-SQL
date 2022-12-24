Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. 
Write a query to print the 
- id
- age
- coins_needed 
- power of the wands that Ron's interested in, sorted in order of descending power. 

If more than one wand has same power, sort the result in order of descending age.

## MS SQL Server with Windows Function
```sql
SELECT w.id, q1.age, q1.min_coins, q1.power
FROM Wands w
JOIN (
    SELECT  w.id, 
            w.power, 
            p.age, 
            MIN(w.coins_needed)OVER(PARTITION BY w.power, p.age) AS 'min_coins'
    FROM Wands w, Wands_Property p
    WHERE w.code=p.code AND p.is_evil = 0
) q1
ON w.id = q1.id
AND w.coins_needed = q1.min_coins 
ORDER BY q1.power desc, q1.age desc
```

## MySQL without Windows Function
```sql
SELECT w.id, p.age, w.coins_needed, w.power
FROM Wands w
JOIN Wands_Property p ON w.code = p.code
WHERE p.is_evil=0
AND w.coins_needed = 
    (
        SELECT MIN(w1.coins_needed) 
        FROM Wands w1
        JOIN Wands_Property p1 ON w1.code = p1.code 
        WHERE w.power = w1.power AND p.age = p1.age
    )  -- correlated subquery
ORDER BY w.power DESC, p.age DESC;
```
