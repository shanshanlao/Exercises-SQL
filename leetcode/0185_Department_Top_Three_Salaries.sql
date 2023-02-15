/*
A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.

Write an SQL query to find the employees who are high earners in each of the departments.
*/

WITH top_3_salary AS (
    SELECT Employee.*,
           DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) as 'salary_rank'
    FROM Employee
)

SELECT DISTINCT d.name as 'Department', 
                t.name as 'Employee', 
                t.salary as 'Salary' 
FROM top_3_salary t, Department d
WHERE t.departmentId = d.Id
AND t.salary_rank IN (1,2,3)

