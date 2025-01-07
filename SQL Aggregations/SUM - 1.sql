/*
	Find the total amount of poster_qty paper ordered in the orders table.
    
*/

SELECT SUM(orders.poster_qty) AS 'Total posters orderd'
FROM orders