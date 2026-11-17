-- Step 3: Verify the filtered table.
-- Each geography should have exactly 2,631 rows (one per characteristic).
SELECT geo_name, COUNT(*) AS n_rows
FROM `sarnia-workforce.census_2021.profile_peers`
GROUP BY geo_name
ORDER BY geo_name;
