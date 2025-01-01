/*
	Provide a table that displays the region for each sales_rep along with their associated accounts. 
    This time only for the Midwest region. Your final table should include three columns: the region name, the sales rep name, and the account name. 
    Sort the accounts alphabetically (A-Z) according to the account name.
    
*/

SELECT region.name AS 'Region', sales_reps.name AS 'Representative name', accounts.name AS 'Account name'
FROM accounts
Join sales_reps
	ON accounts.sales_rep_id = sales_reps.id
JOIN region
	ON sales_reps.region_id = region.id 
WHERE region.name = 'Midwest'
ORDER BY accounts.name