-- Facebook
-- Data Lemur
-- App Click-through Rate(CTR)


WITH event_sum AS(
SELECT app_id,
SUM(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END) AS click_sum,
SUM(CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END) AS click_impression
FROM events
WHERE timestamp BETWEEN '01-01-2022' AND '01-01-2023'
GROUP BY app_id
)

SELECT app_id, ROUND(100.0*click_sum/click_impression,2) AS ctr
FROM event_sum;
