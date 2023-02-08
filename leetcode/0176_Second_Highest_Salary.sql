-- Write an SQL query to report the second highest salary from the Employee table. 
-- If there is no second highest salary, the query should report null.

SELECT 
    IFNULL( (SELECT DISTINCT salary
              FROM Employee
              Order by salary desc 
              LIMIT 1 OFFSET 1), null)  as 'SecondHighestSalary'

