/*
	How many of the sales reps have more than 5 accounts that they manage?
*/

SELECT sales_reps.id AS 'Sales Rep ID',
       sales_reps.name AS 'Sales Rep Name',
       COUNT(accounts.id) AS 'Num Accounts'
FROM accounts
JOIN sales_reps
    ON accounts.sales_rep_id = sales_reps.id
GROUP BY sales_reps.id, sales_reps.name
HAVING COUNT(accounts.id) > 5;
