/*
	For each account, determine the average amount of each type of paper they purchased across their orders. 
    Your result should have four columns - one for the account name and one for the average quantity purchased for each of the paper types for each account.
*/

SELECT accounts.name AS 'Account name',
	AVG(orders.gloss_qty) AS 'Average gloss quantity',
	AVG(orders.poster_qty) AS 'Average poster quantity',
	AVG(orders.standard_qty) AS 'Average standard quantity'
FROM accounts
JOIN orders
	ON accounts.id = orders.account_id
GROUP BY accounts.name
ORDER BY accounts.name