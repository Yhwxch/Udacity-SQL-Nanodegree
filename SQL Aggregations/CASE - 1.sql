/*
	Write a query to display for each order, the account ID, the total amount of the order, and the level of the order - ‘Large’ or ’Small’ - 
    -depending on if the order is $3000 or more, or smaller than $3000.
*/

SELECT orders.account_id AS 'Account ID', 
	orders.total_amt_usd AS 'Total amount',
	CASE
		WHEN orders.total_amt_usd > 3000 THEN 'Large'
        WHEN orders.total_amt_usd < 3000 THEN 'Small'
	END AS 'Level'
		
FROM orders

