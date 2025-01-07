/*
	Via what channel did the most recent (latest) web_event occur, which account was associated with this web_event? 
    Your query should return only three values - the date, channel, and account name.
    
*/

SELECT accounts.name AS 'Account name',
	web_events.channel AS 'Channel',
	web_events.occurred_at AS 'Date'
FROM web_events
JOIN accounts
	ON web_events.account_id = accounts.id
ORDER BY web_events.occurred_at DESC
LIMIT 1