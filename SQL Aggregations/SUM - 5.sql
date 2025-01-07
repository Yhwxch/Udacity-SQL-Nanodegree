/*
	Find the standard_amt_usd per unit of standard_qty paper. 
    Your solution should use both aggregation and a mathematical operator.
    
*/

SELECT (SUM(orders.standard_amt_usd) / SUM(orders.standard_qty)) AS 'Standard price per unit'
FROM orders