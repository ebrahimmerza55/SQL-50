# Write your MySQL query statement below
WITH RankSalary AS(

SELECT D.name AS Department , E.name AS Employee , E.salary AS Salary ,
DENSE_RANK() OVER(PARTITION BY D.name ORDER BY E.salary DESC) AS rn
FROM Employee AS E
INNER JOIN Department AS D 
ON E.departmentId = D.id)

SELECT Department , Employee , Salary 
FROM RankSalary 
WHERE rn <= 3
