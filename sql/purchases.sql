-- purchases.sql
-- Purchase-level extract with revenue and transaction ID.

SELECT
  PARSE_DATE('%Y%m%d', event_date) AS event_date,
  user_pseudo_id,
  ecommerce.transaction_id,
  ecommerce.purchase_revenue AS revenue
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_20210131`
WHERE event_name = 'purchase'