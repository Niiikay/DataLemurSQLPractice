-- LinkedIn
-- Data Lemur
-- LinkedIn Power Creators(Part 1)

SELECT pp.profile_id
FROM personal_profiles pp
JOIN company_pages cp
ON pp.employer_id = cp.company_id
WHERE pp.followers > cp.followers
ORDER BY pp.profile_id;
