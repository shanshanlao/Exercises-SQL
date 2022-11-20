## Find the Hackers who achieved full scores for more than one challange.

Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! 
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

<b> Hackeres </b>
- hacker_id: Integer
- name: String

<b> Difficult_level </b>
- difficulty_level: Integer
- score: Integer             &emsp;&emsp;&emsp;_The score of the challenge for this difficulty level._

<b> Challenges </b>
- challenge_id: Integer
- hacker_id: Integer
- difficulty_level: Integer

<b> Submissions </b>
- submission_id: Integer
- hacker_id: Integer
- challenge_id: Integer
- score: Integer

### MySQL
```SQL
SELECT h.hacker_id, h.name
FROM Hackers h
JOIN (
    SELECT s.hacker_id, COUNT(s.challenge_id) as total_challenge
    FROM Difficulty d, Submissions s, Challenges c
    WHERE c.difficulty_level = d.difficulty_level
    AND c.challenge_id = s.challenge_id
    AND s.score = d.score -- Hacker that got full scores
    GROUP BY s.hacker_id
    HAVING total_challenge > 1
) q1
ON h.hacker_id = q1.hacker_id
ORDER BY q1.total_challenge DESC, h.hacker_id ASC
```
