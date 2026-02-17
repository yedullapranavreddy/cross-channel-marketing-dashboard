CREATE OR REPLACE TABLE marketing_data.ads_unified AS

-- FACEBOOK
SELECT
  'facebook' AS platform,
  date,
  campaign_name,
  impressions,
  clicks,
  spend AS cost,
  conversions,
  SAFE_DIVIDE(clicks, impressions) AS CTR,
  SAFE_DIVIDE(spend, clicks) AS CPC,
  SAFE_DIVIDE(spend, conversions) AS CPA,
  SAFE_DIVIDE(conversions, clicks) AS CVR
FROM marketing_data.facebook_ads

UNION ALL

-- GOOGLE
SELECT
  'google' AS platform,
  date,
  campaign_name,
  impressions,
  clicks,
  cost,
  conversions,
  SAFE_DIVIDE(clicks, impressions) AS CTR,
  SAFE_DIVIDE(cost, clicks) AS CPC,
  SAFE_DIVIDE(cost, conversions) AS CPA,
  SAFE_DIVIDE(conversions, clicks) AS CVR
FROM marketing_data.google_ads

UNION ALL

-- TIKTOK
SELECT
  'tiktok' AS platform,
  date,
  campaign_name,
  impressions,
  clicks,
  cost,
  conversions,
  SAFE_DIVIDE(clicks, impressions) AS CTR,
  SAFE_DIVIDE(cost, clicks) AS CPC,
  SAFE_DIVIDE(cost, conversions) AS CPA,
  SAFE_DIVIDE(conversions, clicks) AS CVR
FROM marketing_data.tiktok_ads;
