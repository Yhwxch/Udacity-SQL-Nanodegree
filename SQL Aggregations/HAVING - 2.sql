/*
	How many accounts have more than 20 orders?
*/

SELECT accounts.name AS 'Account name',
	COUNT(orders.account_id) AS 'Number of orders'
FROM accounts
JOIN orders
	ON accounts.id = orders.account_id
GROUP BY accounts.name
HAVING COUNT(orders.account_id) > 20
ORDER BY COUNT(orders.account_id) DESC
