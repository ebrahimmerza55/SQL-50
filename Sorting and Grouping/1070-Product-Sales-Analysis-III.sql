# Write your MySQL query statement below
SELECT S.product_id, S.year  AS first_year , S.quantity  , S.price 
FROM Sales AS S
JOIN (SELECT product_id, MIN(year) AS first_year 
    FROM Sales
    GROUP BY Product_id ) AS P 
ON S.product_id = P.product_id AND S.year = P.first_year;