The total score of a hacker is the sum of their maximum scores for all of the challenges. 
Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of 0 from your result.

<b> Hackeres </b>
- hacker_id: Integer
- name: String

<b> Submissions </b>
- submission_id: Integer
- hacker_id: Integer
- challenge_id: Integer
- score: Integer

```sql
SELECT q2.hacker_id, h.name, q2.total_score
FROM(
    SELECT
        hacker_id, 
        SUM(max_score) as total_score
    FROM (
            SELECT
                hacker_id,
                challenge_id,
                MAX(score) as max_score
            FROM Submissions
            GROUP BY hacker_id, challenge_id
    ) q1
    GROUP BY hacker_id
    HAVING total_score != 0
) q2
JOIN Hackers h ON h.hacker_id = q2.hacker_id
ORDER BY q2.total_score DESC, q2.hacker_id ASC

```

