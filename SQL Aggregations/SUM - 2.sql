/*
	Find the total amount of standard_qty paper ordered in the orders table.
    
*/

SELECT SUM(orders.standard_qty) AS 'Total standard papers orderd'
FROM orders