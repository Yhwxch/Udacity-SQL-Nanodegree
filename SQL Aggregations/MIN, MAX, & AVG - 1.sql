/*
	When was the earliest order ever placed? You only need to return the date.
    
*/

SELECT MIN(orders.occurred_at) AS 'Earliest order'
FROM orders