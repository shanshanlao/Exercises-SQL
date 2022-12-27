You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. 
It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table.

If the End_Date of the tasks are consecutive, then they are part of the same project. 
Samantha is interested in finding the total number of different projects completed.

Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. 
If there is more than one project that have the same number of completion days, then order by the start date of the project.

## MS SQL Server with Windows Function
```sql
WITH temp AS (
SELECT Start_Date, 
        CASE WHEN LEAD(Prev_End_Date) OVER(ORDER BY Start_Date) IS NULL
            THEN End_Date
            ELSE LEAD(Prev_End_Date) OVER(ORDER BY Start_Date)
        END AS Project_End_Date
FROM (
        SELECT *,
        LAG(End_Date) OVER(ORDER BY Start_Date) AS 'Prev_End_Date'
        FROM Projects
     ) q
WHERE Start_Date != Prev_End_Date 
OR Prev_End_Date IS NULL
)

SELECT *
FROM temp
ORDER BY DATEDIFF(day,Start_Date,Project_End_Date), Start_Date 
```
