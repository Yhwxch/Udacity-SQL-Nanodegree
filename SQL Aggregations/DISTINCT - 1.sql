/*
	Use DISTINCT to test if there are any accounts associated with more than one region.
*/

SELECT accounts.id AS "Account ID", 
       region.id AS "Region ID", 
       accounts.name AS "Account Name", 
       region.name AS "Region Name"
FROM accounts
JOIN sales_reps
    ON sales_reps.id = accounts.sales_rep_id
JOIN region
    ON region.id = sales_reps.region_id;

SELECT DISTINCT id, name
FROM accounts;