-- Amazon
-- Data Lemur
-- Average Review Ratings

SELECT EXTRACT(MONTH FROM SUBMIT_DATE) AS mth, product_id, ROUND(AVG(stars),2)
FROM reviews
GROUP BY mth, product_id
ORDER BY mth, product_id;