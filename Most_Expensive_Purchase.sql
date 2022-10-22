-- Amazon
-- Data Lemur
-- Most Expensive Purchase


SELECT customer_id, MAX(purchase_amount) AS purchase_amount
FROM transactions
GROUP BY customer_id
ORDER BY purchase_amount DESC;