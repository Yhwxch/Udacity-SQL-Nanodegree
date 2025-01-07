/*
	Which account used facebook most as a channel?
*/

SELECT accounts.name AS 'Account name',
	COUNT(web_events.id) AS 'Number of Facebook channel usage'
FROM accounts
JOIN web_events
	ON accounts.id = web_events.account_id
WHERE web_events.channel = 'Facebook'
GROUP BY accounts.name
ORDER BY COUNT(web_events.id) DESC
LIMIT 1