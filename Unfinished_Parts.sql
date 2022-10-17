-- Tesla
-- Data Lemur
-- Unfinished Parts

SELECT part 
FROM parts_assembly
WHERE finish_date IS NULL
GROUP BY part;
