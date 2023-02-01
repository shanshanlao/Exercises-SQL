/*
Write an SQL query to report all customers who never order anything.

Return the result table in any order.
*/

SELECT name as 'Customers'
FROM Customers
WHERE id NOT IN (SELECT customerId FROM Orders)
