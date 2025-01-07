/*
	Which month did Parch & Posey have the greatest sales in terms of the total number of orders?
    Are all months evenly represented by the dataset?
*/

SELECT DATE_FORMAT(orders.occurred_at, '%Y-%m-01') AS 'Year', 
	FORMAT(SUM(orders.total), 0) AS 'Total sales'	
FROM orders
GROUP BY DATE_FORMAT(orders.occurred_at, '%Y-%m-01')
ORDER BY SUM(orders.total) DESC
LIMIT 1