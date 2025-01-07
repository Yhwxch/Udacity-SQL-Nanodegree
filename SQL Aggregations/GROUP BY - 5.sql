/*
	Who was the primary contact associated with the earliest web_event?
    
*/

SELECT accounts.primary_poc AS 'Primary contact',
	web_events.occurred_at AS 'Earliest web event date'
FROM accounts
JOIN web_events
	ON accounts.id = web_events.account_id
ORDER BY web_events.occurred_at 
LIMIT 1
