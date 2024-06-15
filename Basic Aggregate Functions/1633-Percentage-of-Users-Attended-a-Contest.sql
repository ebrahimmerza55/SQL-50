# Write your MySQL query statement below
SELECT R.contest_id , ROUND(COUNT(U.user_id) * 100 / (SELECT COUNT(DISTINCT user_id) FROM Users),2) AS percentage  
FROM Users AS U 
LEFT JOIN Register AS R ON U.user_id = R.user_id 
WHERE R.contest_id IS NOT NULL
GROUP BY R.contest_id
ORDER BY percentage DESC , R.contest_id ASC;