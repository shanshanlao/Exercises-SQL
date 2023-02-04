/*
Write a SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
*/

SELECT customer_id, COUNT(*) as count_no_trans
FROM Visits
WHERE visit_id NOT IN ( SELECT visit_id FROM Transactions )
GROUP BY customer_id
