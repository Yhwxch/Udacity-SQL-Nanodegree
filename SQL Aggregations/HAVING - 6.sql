/*
	Which account has spent the most with us?
*/

SELECT accounts.name AS 'Account name',
	FORMAT(SUM(orders.total_amt_usd), 0) AS 'Total cost'
FROM accounts
JOIN orders
	ON accounts.id = orders.account_id
GROUP BY accounts.name
ORDER BY SUM(orders.total_amt_usd) DESC
LIMIT 1
