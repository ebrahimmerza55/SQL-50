# Write your MySQL query statement below
SELECT P.product_id , IFNULL(ROUND(SUM(P.price * U.units) / SUM(U.units),2),0) AS average_price
FROM Prices AS P
LEFT JOIN UnitsSold AS U ON P.product_id = U.product_id 
AND U.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id ;