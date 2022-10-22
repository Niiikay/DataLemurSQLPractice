-- Microsoft
-- Data Lemur
-- Teams Power Users

SELECT sender_id, COUNT(message_id) AS message_count
FROM messages
WHERE sent_date BETWEEN '08-01-2022' AND '09-01-2022'
GROUP BY sender_id
ORDER BY COUNT(message_id) DESC
LIMIT 2;