/*
Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).
*/
SELECT w2.id
FROM Weather w1, Weather w2
WHERE w1.recordDate = w2.recordDate-1
AND w1.temperature < w2.temperature
