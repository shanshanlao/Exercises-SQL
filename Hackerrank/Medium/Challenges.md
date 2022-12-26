Julia asked her students to create some coding challenges. 

Write a query to print the hacker_id, name, and the total number of challenges created by each student. 
- Sort your results by the **total number of challenges** in **descending** order. 
- If more than one student created the same number of challenges, then sort the result by **hacker_id**. 
- If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

# MS SQL Server using Windows Function
```sql
WITH temp AS (
        SELECT hacker_id, COUNT(challenge_id) as cnt
        FROM Challenges c
        GROUP BY hacker_id)

SELECT h.hacker_id, h.name, t.cnt
FROM Hackers h
JOIN temp t
ON h.hacker_id = t.hacker_id
      -- students that have maximum number of challenges
WHERE t.cnt = (SELECT MAX(cnt) FROM temp) 
      -- no more than one student created the same number of challenges 
   OR t.cnt IN (SELECT cnt FROM temp GROUP BY cnt HAVING COUNT(cnt) = 1)
ORDER BY t.cnt DESC, h.hacker_id;
```
