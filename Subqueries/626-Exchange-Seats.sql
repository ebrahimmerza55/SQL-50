# Write your MySQL query statement below

SELECT id,
(CASE WHEN id%2 = 0 THEN (LAG(student) OVER(ORDER BY id)) ELSE IFNULL(LEAD(student) OVER(ORDER BY id),student) END) AS student
FROM Seat