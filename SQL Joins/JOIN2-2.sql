/*
	Provide a table that provides the region for each sales_rep along with their associated accounts. 
    Your final table should include three columns: the region name, the sales rep name, and the account name. 
    Sort the accounts alphabetically (A-Z) according to the account name.
    
*/

SELECT region.name AS 'Region name', sales_reps.name AS 'Sales representative', accounts.name AS 'Account name' 
FROM accounts
JOIN sales_reps
	ON accounts.sales_rep_id = sales_reps.id
JOIN region
	ON sales_reps.region_id = region.id
ORDER BY accounts.name