-- funnel_steps_cr.sql
-- Funnel step counts with conversion rate between stages.

WITH base AS (
  SELECT
    'View item' AS step,
    1 AS step_order,
    COUNT(DISTINCT user_pseudo_id) AS users
  FROM portfolio.funnel_users
  WHERE viewed_item

  UNION ALL

  SELECT
    'Add to cart' AS step,
    2 AS step_order,
    COUNT(DISTINCT user_pseudo_id) AS users
  FROM portfolio.funnel_users
  WHERE added_to_cart

  UNION ALL

  SELECT
    'Begin checkout' AS step,
    3 AS step_order,
    COUNT(DISTINCT user_pseudo_id) AS users
  FROM portfolio.funnel_users
  WHERE began_checkout

  UNION ALL

  SELECT
    'Purchase' AS step,
    4 AS step_order,
    COUNT(DISTINCT user_pseudo_id) AS users
  FROM portfolio.funnel_users
  WHERE purchased
)

SELECT
  step,
  step_order,
  users,
  SAFE_DIVIDE(
    users,
    LAG(users) OVER (ORDER BY step_order)
  ) AS conversion_rate
FROM base