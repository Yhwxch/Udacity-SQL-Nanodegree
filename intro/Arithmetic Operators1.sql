SELECT (standard_amt_usd / standard_qty) AS unit_price, id, account_id
FROM orders
LIMIT 10;