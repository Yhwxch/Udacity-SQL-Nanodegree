/*
	Which account (by name) placed the earliest order? 
    Your solution should have the account name and the date of the order.
    
*/

SELECT accounts.name AS 'Account name', MIN(orders.occurred_at) AS'Earliest order date in database'
FROM orders
JOIN accounts
	ON orders.account_id = accounts.id
GROUP BY accounts.name
LIMIT 1