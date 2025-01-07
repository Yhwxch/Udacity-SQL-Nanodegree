/*
	Find the number of sales reps in each region. 
    Your final table should have two columns - the region and the number of sales_reps. Order from the fewest reps to most reps.
    
*/

SELECT region.name AS 'Region', 
	COUNT(sales_reps.name) AS 'Number of representatives'
FROM region
JOIN sales_reps
	ON region.id = sales_reps.region_id
GROUP BY region.name
ORDER BY COUNT(sales_reps.name)
