/*
Write an SQL query to report the distance traveled by each user.

Return the result table ordered by travelled_distance in descending order, 
if two or more users traveled the same distance, 
order them by their name in ascending order.
*/

SELECT u.name, 
    CASE WHEN r.distance IS NOT NULL THEN SUM(r.distance)
    ELSE 0
    END as 'travelled_distance'
FROM Users u
LEFT JOIN Rides r
ON u.id = r.user_id
GROUP BY u.id
ORDER BY travelled_distance DESC, name ASC;
