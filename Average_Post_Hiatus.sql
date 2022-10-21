-- Facebook
-- Data Lemur
-- Average Post Hiatus

SELECT user_id, MAX(post_date::DATE) - MIN(post_date::DATE)  AS days_between
FROM posts
WHERE post_date BETWEEN '01-01-2021' AND '01-01-2022'
GROUP BY user_id
HAVING MAX(post_date::DATE) - MIN(post_date::DATE) >=2
ORDER BY days_between DESC;

