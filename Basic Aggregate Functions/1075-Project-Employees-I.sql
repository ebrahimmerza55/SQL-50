# Write your MySQL query statement below
SELECT P.project_id, ROUND(AVG(experience_years),2) AS average_years
FROM Project AS P
LEFT JOIN Employee AS E ON P.employee_id = E.Employee_id 
GROUP BY P.project_id;