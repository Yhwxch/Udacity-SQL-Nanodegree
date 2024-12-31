/*
	Use the web_events table to find all information regarding individuals who were contacted via the organic or adwords channels, 
    and started their account at any point in 2016, sorted from newest to oldest.
    
*/

SELECT *
FROM web_events
WHERE channel IN ('organic','adwords') AND occurred_at LIKE '2016%'
ORDER BY occurred_at