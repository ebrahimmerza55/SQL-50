# Write your MySQL query statement below

WITH Name AS (SELECT u.name , COUNT(r.user_id) 
FROM Users AS u
JOIN MovieRating AS r 
ON u.user_id = r.user_id 
GROUP BY u.name 
ORDER BY COUNT(r.user_id)  DESC , u.name
LIMIT 1 ),
AvgRate AS (
SELECT m.title , AVG(r.rating)
FROM Movies AS m 
JOIN MovieRating AS r
ON m.movie_id = r.movie_id 
WHERE DATE_FORMAT(r.created_at,'%Y-%m') ='2020-02'
GROUP BY m.title
ORDER BY AVG(r.rating) DESC, m.title
LIMIT 1)

SELECT name AS results
FROM Name 
UNION ALL
SELECT title AS results
FROM AvgRate



