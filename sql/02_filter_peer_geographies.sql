-- Step 2: Copy Lambton and five peer candidates into a small native table.
-- Keeps every characteristic; drops the men/women columns for now.
CREATE OR REPLACE TABLE `sarnia-workforce.census_2021.profile_peers` AS
SELECT
  DGUID              AS dguid,
  GEO_NAME           AS geo_name,
  TNR_SF             AS nonresponse_short_form,
  TNR_LF             AS nonresponse_long_form,
  DATA_QUALITY_FLAG  AS data_quality_flag,
  CHARACTERISTIC_ID  AS characteristic_id,
  TRIM(CHARACTERISTIC_NAME) AS characteristic_name,
  C1_COUNT_TOTAL     AS count_total,
  SYMBOL             AS count_symbol,
  C10_RATE_TOTAL     AS rate_total,
  SYMBOL_18          AS rate_symbol
FROM `sarnia-workforce.census_2021.profile_cd_raw`
WHERE DGUID IN (
  '2021A00033538',  -- Lambton
  '2021A00033536',  -- Chatham-Kent
  '2021A00033501',  -- Stormont, Dundas and Glengarry
  '2021A00033557',  -- Algoma
  '2021A00033528',  -- Haldimand-Norfolk
  '2021A00033532'   -- Oxford
);
