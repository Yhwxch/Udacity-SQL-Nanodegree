/*
	We would like to understand 3 different levels of customers based on the amount associated with their purchases. 
    The top-level includes anyone with a Lifetime Value (total sales of all orders) greater than 200,000 usd. The second level is between 200,000 and 100,000 usd. 
    The lowest level is anyone under 100,000 usd. 
    Provide a table that includes the level associated with each account. 
    You should provide the account name, the total sales of all orders for the customer, and the level. 
    Order with the top spending customers listed first.
*/

SELECT accounts.name AS 'Account name',
	FORMAT(SUM(orders.total_amt_usd), 0) AS 'Total sales',
	CASE 
		WHEN SUM(orders.total_amt_usd) > 200000 THEN 'greater than 200,000 usd'
        WHEN SUM(orders.total_amt_usd) >= 100000 AND SUM(orders.total_amt_usd) <= 200000 THEN 'between 200,000 and 100,000 usd'
        ELSE 'under 100,000 usd'
        END AS 'Level'
FROM accounts
JOIN orders
	ON accounts.id = orders.account_id
GROUP BY accounts.name
ORDER BY SUM(orders.total_amt_usd) DESC