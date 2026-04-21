-- funnel_users.sql
-- User-level funnel flags based on ecommerce events.

SELECT
  user_pseudo_id,
  MAX(event_name = 'view_item') AS viewed_item,
  MAX(event_name = 'add_to_cart') AS added_to_cart,
  MAX(event_name = 'begin_checkout') AS began_checkout,
  MAX(event_name = 'purchase') AS purchased
FROM portfolio.fact_events
GROUP BY user_pseudo_id