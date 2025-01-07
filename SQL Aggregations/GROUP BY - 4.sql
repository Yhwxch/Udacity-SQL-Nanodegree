/*
	Find the total number of times each type of channel from the web_events was used. 
    Your final table should have two columns - the channel and the number of times the channel was used.
    
*/

SELECT web_events.channel AS 'Channel', COUNT(web_events.channel) AS 'Count of usage'
FROM web_events
GROUP BY web_events.channel
ORDER BY COUNT(web_events.channel) DESC

