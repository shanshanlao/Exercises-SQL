/*
A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.

Write an SQL query to find the employees who are high earners in each of the departments.
*/

WITH top_3_salary AS (
    SELECT departmentId, salary, id,
            DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) as 'salary_rank'
    FROM Employee
)

SELECT DISTINCT d.name as 'Department', e.name as 'Employee', e.salary as 'Salary' 
FROM top_3_salary t, Employee e, Department d
WHERE t.id = e.id AND e.departmentId = d.Id
AND t.salary_rank IN (1,2,3)

