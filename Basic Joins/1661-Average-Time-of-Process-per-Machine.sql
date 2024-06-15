# Write your MySQL query statement below
SELECT 
    machine_id,
    ROUND(
        AVG(end - start),
        3
    ) AS processing_time
FROM 
    (SELECT 
         machine_id, 
         process_id, 
         MIN(timestamp) AS start, 
         MAX(timestamp) AS end
     FROM 
         Activity
     GROUP BY 
         machine_id, 
         process_id) AS T
GROUP BY 
    machine_id;