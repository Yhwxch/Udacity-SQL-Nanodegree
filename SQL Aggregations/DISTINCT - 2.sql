/*
	Use DISTINCT to test if there are any accounts associated with more than one region.
*/

SELECT sales_reps.id AS "Sales Rep ID", 
       sales_reps.name AS "Sales Rep Name", 
       COUNT(*) AS "Num Accounts"
FROM accounts
JOIN sales_reps
    ON sales_reps.id = accounts.sales_rep_id
GROUP BY sales_reps.id, sales_reps.name
ORDER BY "Num Accounts";


SELECT DISTINCT id, name
FROM sales_reps;
