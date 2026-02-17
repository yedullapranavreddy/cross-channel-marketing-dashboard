SELECT platform, COUNT(*) rows
FROM `ads-school-487522.marketing_data.ads_unified`
GROUP BY platform
ORDER BY rows DESC;
