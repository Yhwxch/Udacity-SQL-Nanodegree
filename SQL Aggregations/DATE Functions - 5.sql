/*
	In which month of which year did Walmart spend the most on gloss paper in terms of dollars?
*/

SELECT DATE_FORMAT(orders.occurred_at, '%Y-%m-01') AS 'Month', 
	FORMAT(SUM(orders.gloss_amt_usd), 0) AS 'Total'	
FROM orders
WHERE orders.account_id = 1001  # Account id for Walmart 
GROUP BY DATE_FORMAT(orders.occurred_at, '%Y-%m-01')
ORDER BY SUM(orders.gloss_amt_usd) DESC
LIMIT 1