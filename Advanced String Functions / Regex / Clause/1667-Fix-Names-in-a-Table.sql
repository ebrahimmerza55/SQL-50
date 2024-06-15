# Write your MySQL query statement below
SELECT user_id ,  
CONCAT(UPPER(SUBSTRING(LOWER(name), 1, 1)), SUBSTRING(LOWER(name), 2)) AS name
FROM Users
ORDER BY user_id