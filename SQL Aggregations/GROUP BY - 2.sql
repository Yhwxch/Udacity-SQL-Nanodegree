/*
	Find the total sales in usd for each account. 
    You should include two columns - the total sales for each company's orders in usd and the company name.
    
*/

SELECT 
    accounts.name AS 'Company name', 
    SUM(orders.total_amt_usd) AS 'Total sales'
FROM accounts
JOIN orders
    ON accounts.id = orders.account_id
GROUP BY accounts.name
ORDER BY SUM(orders.total_amt_usd) DESC;
