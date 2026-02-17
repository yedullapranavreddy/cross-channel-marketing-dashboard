Project Overview

This project integrates multi-channel advertising data from Facebook, Google, and TikTok into a unified BigQuery data model and delivers actionable insights through an interactive Looker Studio dashboard.

The objective was to:
	•	Standardize raw advertising datasets across platforms
	•	Create a unified cross-channel analytics table
	•	Calculate key marketing efficiency metrics
	•	Validate data integrity
	•	Build an executive-ready performance dashboard

⸻

Live Dashboard

View the interactive dashboard here:

👉 https://lookerstudio.google.com/reporting/dfa850cd-ac67-47e4-b0f8-5f18f27601be

(Access set to “Anyone with the link – Viewer”)

⸻

Dashboard Sections

Executive KPI Summary
	•	Total Spend
	•	Total Clicks
	•	Total Conversions
	•	Overall Conversion Rate (CVR)

Conversion & Spend Trend Analysis

Time-series visualization of advertising spend and conversions across dynamic date ranges.

Conversion Volume vs Cost Efficiency (CPA)

Platform-level comparison of:
	•	Conversion volume
	•	Cost per Acquisition (CPA)

CTR by Platform

Upper-funnel performance comparison across Facebook, Google, and TikTok.

Detailed Channel Metrics

Campaign-level breakdown including:
	•	Impressions
	•	Clicks
	•	Cost
	•	Conversions
	•	CTR
	•	CPC
	•	CPA
	•	CVR

⸻

Data Architecture

Raw Sources
	•	Facebook Ads
	•	Google Ads
	•	TikTok Ads

Cloud Data Warehouse
	•	Google BigQuery

Unified Table

marketing_data.ads_unified

⸻

SQL Implementation

Data Transformation

File: sql/create_ads_unified_table.sql
	•	Combines platform tables using UNION ALL
	•	Standardizes schema
	•	Creates calculated metrics
	•	Uses SAFE_DIVIDE to prevent division-by-zero errors

Calculated Metrics:
	•	CTR = clicks / impressions
	•	CPC = cost / clicks
	•	CPA = cost / conversions
	•	CVR = conversions / clicks

⸻

Data Validation

File: sql/validate_ads_unified.sql

Validation includes:
	•	Row count verification by platform
	•	Platform distribution checks
	•	Confirmation that all channels are included

⸻

Key Insights

Based on the selected date range:
	•	TikTok drives the highest conversion volume but at a higher CPA.
	•	Google maintains the strongest CVR efficiency.
	•	Facebook demonstrates balanced cost performance across channels.

⸻

Tools Used
	•	Google BigQuery (SQL)
	•	Looker Studio (Dashboarding & Visualization)
	•	Git & GitHub (Version Control)

⸻

Author

Pranav Sai Reddy Yedulla
