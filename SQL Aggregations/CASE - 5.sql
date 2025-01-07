/*
	We would like to identify top-performing sales reps, which are sales reps associated with more than 200 orders. 
    Create a table with the sales rep name, the total number of orders, and a column with top or not depending on if they have more than 200 orders. 
    Place the top salespeople first in your final table.
*/

SELECT sales_reps.name AS 'Representatives',
	COUNT(orders.id) AS 'Total number of orders',
	CASE
		WHEN COUNT(orders.id) > 200 THEN 'YES'
        ELSE 'NO'
        END AS 'Top-performing'
FROM sales_reps
JOIN accounts
	ON sales_reps.id = accounts.sales_rep_id
JOIN orders	
	ON accounts.id = orders.account_id
GROUP BY sales_reps.name
ORDER BY COUNT(orders.id) DESC