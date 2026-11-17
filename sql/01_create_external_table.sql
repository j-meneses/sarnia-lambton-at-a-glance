-- Step 1: Connect the 2021 Census Profile (census divisions) CSV in Google Drive
-- as an external table.
-- Source: Statistics Canada, Census Profile 2021, catalogue 98-401-X2021004.
-- Encoding is ISO-8859-1 because Statistics Canada's file uses a Windows encoding.
CREATE OR REPLACE EXTERNAL TABLE `sarnia-workforce.census_2021.profile_cd_raw`
OPTIONS (
  format = 'CSV',
  uris = ['https://drive.google.com/open?id=1-PI9m2VyJT_8wnJlxi2BY_TQHhoEGzQS'],
  skip_leading_rows = 1,
  encoding = 'ISO-8859-1'
);
