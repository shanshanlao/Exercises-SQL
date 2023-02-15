-- Write an SQL query to find the employees who earn more than their managers.

SELECT e1.name as 'Employee'
FROM Employee e1
JOIN Employee e2
ON e1.managerId = e2.Id
WHERE e1.salary > e2.salary 
