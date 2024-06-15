# Write your MySQL query statement below
SELECT MAX(CASE WHEN num THEN num ELSE NULL END) AS num
FROM (SELECT num 
      FROM Mynumbers
      GROUP BY num
      HAVING COUNT(num) = 1) AS Sub;