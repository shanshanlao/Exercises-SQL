/*
Write an SQL query to report the name and balance of users with a balance higher than 10000. 
The balance of an account is equal to the sum of the amounts of all transactions involving that account.
*/

SELECT name, SUM(amount) AS balance
FROM Users u, Transactions t
WHERE u.account = t.account
GROUP BY u.account
HAVING balance > 10000
