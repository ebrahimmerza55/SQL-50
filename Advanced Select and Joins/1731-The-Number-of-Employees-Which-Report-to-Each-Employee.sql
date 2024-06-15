# Write your MySQL query statement below
SELECT e1.employee_id , e1.name , COUNT(e2.employee_id) AS reports_count , 
ROUND(AVG(e2.age),0) AS average_age 
FROM Employees AS e1
JOIN Employees AS e2 ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id
Having reports_count >0
ORDER BY e1.employee_id;
      
   