-- Write an SQL query to find all numbers that appear at least three times consecutively.

SELECT DISTINCT l1.num as ConsecutiveNums
FROM Logs l1, Logs l2, Logs l3
WHERE l2.id  = l1.id + 1 AND l3.id = l1.id+2
AND l1.num = l2.num AND l2.num = l3.num
