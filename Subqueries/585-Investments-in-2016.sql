# Write your MySQL query statement below
SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM Insurance 
WHERE pid IN (
SELECT I1.pid
FROM Insurance AS I1
JOIN Insurance AS I2
ON I1.tiv_2015 = I2.tiv_2015 AND
I1.pid != I2.pid) 
AND (lat,lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
)
 