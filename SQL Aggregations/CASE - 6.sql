/*
	The previous didn't account for the middle, nor the dollar amount associated with the sales. 
    Management decides they want to see these characteristics represented as well. 
    We would like to identify top-performing sales reps, which are sales reps associated with more than 200 orders or more than 750000 in total sales. 
    The middle group has any rep with more than 150 orders or 500000 in sales. 
    Create a table with the sales rep name, the total number of orders, total sales across all orders, and a column with top, middle, or low depending on these criteria. 
    Place the top salespeople based on the dollar amount of sales first in your final table. 
    You might see a few upset salespeople by this criteria!
*/

SELECT sales_reps.name AS 'Representatives',
	COUNT(orders.id) AS 'Total number of orders',
    SUM(orders.total_amt_usd) AS 'Total sales',
	CASE
		WHEN COUNT(orders.id) > 200 OR SUM(orders.total_amt_usd) > 750000 THEN 'Top'
		WHEN COUNT(orders.id) > 150 OR SUM(orders.total_amt_usd) > 500000 THEN 'Middle'
		ELSE 'Low'
        END AS 'Performance'
FROM sales_reps
JOIN accounts
	ON sales_reps.id = accounts.sales_rep_id
JOIN orders	
	ON accounts.id = orders.account_id
GROUP BY sales_reps.name
ORDER BY SUM(orders.total_amt_usd) DESC