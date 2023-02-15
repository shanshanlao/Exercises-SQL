-- Write an SQL query to find employees who have the highest salary in each of the departments.

WITH top_salary AS (
    SELECT departmentId, MAX(salary) as highest_salary
    FROM Employee 
    GROUP BY departmentId
)


SELECT d.name as 'Department', e.name as 'Employee', e.salary as 'Salary'
FROM top_salary t 
JOIN Department d ON t.departmentId = d.id
JOIN Employee e ON e.departmentId = d.id
WHERE e.salary = t.highest_salary
