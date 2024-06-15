# Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee 
WHERE Employee.salary < (
    SELECT MAX(salary) 
    FROM Employee
)
