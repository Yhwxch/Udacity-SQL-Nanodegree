/*
	Determine the number of times a particular channel was used in the web_events table for each sales rep. 
    Your final table should have three columns - the name of the sales rep, the channel, and the number of occurrences. 
    Order your table with the highest number of occurrences first.
*/

SELECT sales_reps.name AS 'Representative',
	web_events.channel AS 'Channel',
	COUNT(web_events.channel) AS 'Occurrences'
FROM sales_reps
JOIN accounts
	ON sales_reps.id = accounts.sales_rep_id
JOIN web_events
	ON web_events.account_id = accounts.id
GROUP BY sales_reps.name, web_events.channel
ORDER BY COUNT(web_events.channel) DESC
