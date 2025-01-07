/*
	For each account, determine the average amount spent per order on each paper type. 
    Your result should have four columns - one for the account name and one for the average amount spent on each paper type.
*/

SELECT accounts.name AS 'Account name',
	AVG(orders.gloss_amt_usd) AS 'Average gloss cost',
	AVG(orders.poster_amt_usd) AS 'Average poster cost',
	AVG(orders.standard_amt_usd) AS 'Average standard cost'
FROM accounts
JOIN orders
	ON accounts.id = orders.account_id
GROUP BY accounts.name
ORDER BY accounts.name