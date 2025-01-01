/*
	Provide the name for each region for every order, 
    as well as the account name and the unit price they paid (total_amt_usd/total) for the order. 
    Your final table should have 3 columns: region name, account name, and unit price. 
    A few accounts have 0 for total, so I divided by (total + 0.01) to assure not dividing by zero.
    
*/

SELECT region.name AS 'Region', accounts.name AS 'Account name',( orders.total_amt_usd / (orders.total + 0.01) ) AS 'Unit price'
FROM accounts
JOIN sales_reps
	ON accounts.sales_rep_id = sales_reps.id
JOIN region
	ON sales_reps.region_id = region.id
JOIN orders
	ON accounts.id = orders.account_id