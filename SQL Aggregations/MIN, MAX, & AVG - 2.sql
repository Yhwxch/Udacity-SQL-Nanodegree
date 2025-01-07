/*
	Try performing the same query as in question 1 without using an aggregation function.
    
*/

SELECT orders.occurred_at AS 'Earliest order'
FROM orders
ORDER BY orders.occurred_at
LIMIT 1