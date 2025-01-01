/*
	Provide a table for all web_events associated with the account name of Walmart. 
    There should be three columns. Be sure to include the primary_poc, time of the event, and the channel for each event. 
    Additionally, you might choose to add a fourth column to assure only Walmart events were chosen.
    
*/

SELECT primary_poc, occurred_at, channel, name 
FROM accounts
JOIN web_events
	ON accounts.id = web_events.account_id
WHERE name = 'Walmart'