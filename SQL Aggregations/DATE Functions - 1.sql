/*
	Find the sales in terms of total dollars for all orders in each year, ordered from greatest to least. 
    Do you notice any trends in the yearly sales totals?
*/

SELECT DATE_FORMAT(orders.occurred_at, '%Y-01-01') AS 'Year', 
	FORMAT(SUM(orders.total_amt_usd), 0) AS 'Total sales'	
FROM orders
GROUP BY DATE_FORMAT(orders.occurred_at, '%Y-01-01')
ORDER BY SUM(orders.total_amt_usd) DESC;