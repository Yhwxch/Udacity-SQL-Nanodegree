/*
	When did the most recent (latest) web_event occur?
    
*/

SELECT MAX(web_events.occurred_at) AS 'Latest web event'
FROM web_events
