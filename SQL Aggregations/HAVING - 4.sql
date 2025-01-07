/*
	Which accounts spent more than 30,000 usd total across all orders?
*/

SELECT accounts.name AS 'Account name',
	FORMAT(SUM(orders.total_amt_usd), 0) AS 'Total cost'
FROM accounts
JOIN orders
	ON accounts.id = orders.account_id
GROUP BY accounts.name
HAVING SUM(orders.total_amt_usd) > 30000
ORDER BY SUM(orders.total_amt_usd) DESC
