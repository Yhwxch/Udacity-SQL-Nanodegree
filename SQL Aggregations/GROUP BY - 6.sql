/*
	What was the smallest order placed by each account in terms of total usd. 
    Provide only two columns - the account name and the total usd. Order from smallest dollar amounts to largest.
    
*/

SELECT accounts.name AS 'Account name',
	MIN(orders.total_amt_usd) AS 'Total USD'
FROM accounts
JOIN orders
	ON accounts.id = orders.account_id
GROUP BY accounts.name
ORDER BY MIN(orders.total_amt_usd)
