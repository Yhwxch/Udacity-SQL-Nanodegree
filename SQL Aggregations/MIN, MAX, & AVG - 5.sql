/*
	Find the mean (AVERAGE) amount spent per order on each paper type, as well as the mean amount of each paper type purchased per order. 
    Your final answer should have 6 values - one for each paper type for the average number of sales, as well as the average amount.
    
*/

SELECT 
    AVG(standard_amt_usd) AS 'Average Standard Amount',
    AVG(standard_qty) AS 'Average Standard Quantity',
    AVG(poster_amt_usd) AS 'Average Poster Amount',
    AVG(poster_qty) AS 'Average Poster Quantity',
    AVG(gloss_amt_usd) AS 'Average Gloss Amount',
    AVG(gloss_qty) AS 'Average Gloss Quantity'
FROM orders;
