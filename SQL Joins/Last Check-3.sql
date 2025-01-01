/*
	Provide a table that provides the region for each sales_rep along with their associated accounts. 
    This time only for accounts where the sales rep has a last name starting with K and in the Midwest region. 
    Your final table should include three columns: the region name, the sales rep name, and the account name. 
    Sort the accounts alphabetically (A-Z) according to the account name.
    
*/

SELECT region.name AS 'Region', sales_reps.name AS 'Representative name', accounts.name AS 'Account name'
FROM accounts
Join sales_reps
	ON accounts.sales_rep_id = sales_reps.id
JOIN region
	ON sales_reps.region_id = region.id 
WHERE (region.name = 'Midwest') AND (sales_reps.name LIKE '% K%')
ORDER BY accounts.name