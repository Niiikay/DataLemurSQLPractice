-- Linkedin
-- DataLemur
-- Duplicate Job Listings

WITH grouped_listing AS(
SELECT COUNT(job_id) AS job_count, company_id, title, description
FROM job_listings
GROUP BY company_id, title, description)

SELECT COUNT(DISTINCT(company_id)) AS co_w_duplicate_jobs
FROM grouped_listing
WHERE job_count>1;