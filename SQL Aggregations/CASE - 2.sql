/*
	Write a query to display the number of orders in each of three categories, based on the total number of items in each order. 
    The three categories are: 'At Least 2000', 'Between 1000 and 2000' and 'Less than 1000'.
*/

SELECT 
    CASE
        WHEN orders.total >= 2000 THEN 'At Least 2000'
        WHEN orders.total >= 1000 AND orders.total < 2000 THEN 'Between 1000 and 2000'
        ELSE 'Less than 1000'
    END AS 'Category',
    COUNT(*) AS 'Order count'
FROM orders
GROUP BY 
    CASE
        WHEN orders.total >= 2000 THEN 'At Least 2000'
        WHEN orders.total >= 1000 AND orders.total < 2000 THEN 'Between 1000 and 2000'
        ELSE 'Less than 1000'
    END;
