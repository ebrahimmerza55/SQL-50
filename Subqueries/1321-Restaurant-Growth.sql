# Write your MySQL query statement below

WITH 
cte1 AS (
    SELECT visited_on, SUM(amount) AS amount
    FROM Customer
    GROUP BY visited_on
),
cte2 AS (
    SELECT 
        visited_on,
        SUM(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount
    FROM cte1 
    ORDER BY visited_on
    LIMIT 100000 -- The "LIMIT" clause does not allow dynamic expressions.
    OFFSET 6
)

SELECT visited_on, amount, ROUND(amount / 7, 2) AS average_amount
FROM cte2
