/*
	Which month did Parch & Posey have the greatest sales in terms of total dollars?
    Are all months evenly represented by the dataset?
*/

SELECT DATE_FORMAT(orders.occurred_at, '%Y-%m-01') AS 'Month', 
	FORMAT(SUM(orders.total_amt_usd), 0) AS 'Total sales'	
FROM orders
GROUP BY DATE_FORMAT(orders.occurred_at, '%Y-%m-01')
ORDER BY SUM(orders.total_amt_usd) DESC
LIMIT 1