-- Facebook
-- Data Lemur
-- Page With No Likes

SELECT p.page_id
FROM pages p
LEFT OUTER JOIN page_likes pl
ON p.page_id = pl.page_id
WHERE liked_date IS NULL
ORDER BY page_id ASC;

