# Write your MySQL query statement below
SELECT  customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT Product_key) = (SELECT COUNT(product_key) FROM Product);


