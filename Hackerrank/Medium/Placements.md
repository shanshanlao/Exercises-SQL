# Query the Names of those students whose best friends got offered a higher salary than them.

You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. 
Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend).
Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

Write a query to output the names of those students whose best friends got offered a higher salary than them. 
Names must be ordered by the salary amount offered to the best friends.
It is guaranteed that no two students got same salary offer.

<b> Students </b>
- ID: Integer
- Name: String

<b> Friends </b>
- ID: Integer
- Friend_ID: Integer

<b> Packages </b>
- ID: Integer
- Salary: Float

### First Try
```SQL
SELECT s.Name
FROM (
        SELECT f.ID as Student_ID, p.Salary as Student_Salary
        FROM Friends f JOIN Packages p ON f.ID = p.ID
    ) q1, -- Salary of each student
    (
        SELECT f.ID as Student_ID, f.Friend_ID as Friend_ID, p.salary as Friend_Salary
        FROM Friends f JOIN Packages p ON f.Friend_ID = p.ID
    ) q2, -- Salary of each students' friend
    Students s
WHERE q1.Student_ID = q2.Student_ID
AND q1.Student_Salary < q2.Friend_Salary
AND s.ID = q1.Student_ID
ORDER BY q2.Friend_Salary ASC
```

### Second Try
```SQL
SELECT s.Name
FROM Friends f
  JOIN Packages p1 ON f.ID = p1.ID           -- p1.Salary as Student_Salary
  JOIN Packages p2 ON f.Friend_ID = p2.ID    -- p2.Salary as Friend_Salary
  JOIN Students s ON s.ID = f.ID             -- Get Student's Name
WHERE p1.Salary < p2.Salary
ORDER BY p2.Salary ASC
```
