-- product_performance.sql
-- Product-level ecommerce performance metrics.

SELECT
  items.item_name AS product_name,
  COUNTIF(event_name = 'view_item') AS views,
  COUNTIF(event_name = 'add_to_cart') AS add_to_cart,
  COUNTIF(event_name = 'begin_checkout') AS begin_checkout,
  COUNTIF(event_name = 'purchase') AS purchases
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`,
UNNEST(items) AS items
WHERE _TABLE_SUFFIX BETWEEN '20210101' AND '20210131'
GROUP BY product_name