-- Given the ‘STUDENTS’ table. Write an SQL query to find the 5’th highest marks in the students table.

SELECT MARKS
FROM STUDENTS
ORDER BY MARKS DESC
LIMIT 1
OFFSET 4
