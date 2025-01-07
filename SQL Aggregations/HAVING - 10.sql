/*
	Which channel was most frequently used by most accounts?
*/

SELECT web_events.channel AS 'Channel name',
	COUNT(web_events.channel) AS 'Number of usage'
FROM web_events
GROUP BY web_events.channel
ORDER BY COUNT(web_events.channel) DESC
LIMIT 1