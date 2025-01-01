/*
	Find all the orders that occurred in 2015. 
    Your final table should have 4 columns: occurred_at, account name, order total, and order total_amt_usd.
    
*/

SELECT orders.occurred_at, accounts.name, orders.total, orders.total_amt_usd
FROM accounts
JOIN orders
	ON accounts.id = orders.account_id
WHERE orders.occurred_at LIKE '2015%'
ORDER BY orders.occurred_at