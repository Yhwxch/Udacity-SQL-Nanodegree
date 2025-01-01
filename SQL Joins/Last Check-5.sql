/*
	Provide the name for each region for every order, as well as the account name and the unit price they paid (total_amt_usd/total) for the order. 
    However, you should only provide the results if the standard order quantity exceeds 100 and the poster order quantity exceeds 50. 
    Your final table should have 3 columns: region name, account name, and unit price. 
    Sort for the smallest unit price first. 
    In order to avoid a division by zero error, adding .01 to the denominator here is helpful (total_amt_usd/(total+0.01)).
    
*/

SELECT region.name AS 'Region', accounts.name AS 'Account name', (orders.total_amt_usd/(orders.total+ 0.01)) AS 'Unit price'
FROM accounts
Join sales_reps
	ON accounts.sales_rep_id = sales_reps.id
JOIN region
	ON sales_reps.region_id = region.id 
JOIN orders
	ON accounts.id = orders.account_id
WHERE (orders.standard_qty > 100) AND (orders.poster_qty > 50)
ORDER BY (orders.total_amt_usd/(orders.total+ 0.01))