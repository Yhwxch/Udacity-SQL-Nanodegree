/*
	Find the total dollar amount of sales using the total_amt_usd in the orders table.
    
*/

SELECT SUM(orders.total_amt_usd) AS 'Total sales'
FROM orders