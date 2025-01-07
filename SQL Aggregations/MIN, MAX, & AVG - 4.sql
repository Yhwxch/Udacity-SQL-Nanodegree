/*
	Try to perform the result of the previous query without using an aggregation function.
    
*/

SELECT web_events.occurred_at AS 'Latest web event'
FROM web_events
ORDER BY web_events.occurred_at DESC
LIMIT 1