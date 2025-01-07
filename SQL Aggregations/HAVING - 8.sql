/*
	Which accounts used facebook as a channel to contact customers more than 6 times?
*/

SELECT accounts.name AS 'Account name',
	COUNT(web_events.id) AS 'Number of Facebook channel usage'
FROM accounts
JOIN web_events
	ON accounts.id = web_events.account_id
WHERE web_events.channel = 'Facebook'
GROUP BY accounts.name
HAVING COUNT(web_events.id) > 6
ORDER BY COUNT(web_events.id) DESC