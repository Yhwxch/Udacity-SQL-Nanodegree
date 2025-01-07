/*
	We would now like to perform a similar calculation to the first, but we want to obtain the total amount spent by customers only in 2016 and 2017. 
    Keep the same levels as in the previous question. 
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
WHERE orders.occurred_at BETWEEN '2016-01-01' AND '2017-12-31'
GROUP BY accounts.name
ORDER BY SUM(orders.total_amt_usd) DESC