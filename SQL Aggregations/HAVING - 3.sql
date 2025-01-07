/*
	Which account has the most orders?
*/

SELECT accounts.name AS 'Account name',
	COUNT(orders.account_id) AS 'Most orders'
FROM accounts
JOIN orders
	ON accounts.id = orders.account_id
GROUP BY accounts.name
ORDER BY COUNT(orders.account_id) DESC
LIMIT 1
