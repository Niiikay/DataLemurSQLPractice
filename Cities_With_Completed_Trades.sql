--Robinhood
--Data Lemur
--Cities With Completed Trades

SELECT u.city, COUNT(order_id) AS total_orders
FROM users u
LEFT JOIN trades t
ON u.user_id = t.user_id
WHERE t.status LIKE 'Completed'
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT 3;
