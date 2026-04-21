-- funnel_steps.sql
-- Aggregated funnel step counts based on unique users.

SELECT 'View item' AS step, COUNT(DISTINCT user_pseudo_id) AS users
FROM `imperial-arcade-451016-n1.portfolio.funnel_users`
WHERE viewed_item

UNION ALL

SELECT 'Add to cart', COUNT(DISTINCT user_pseudo_id)
FROM `imperial-arcade-451016-n1.portfolio.funnel_users`
WHERE added_to_cart

UNION ALL

SELECT 'Begin checkout', COUNT(DISTINCT user_pseudo_id)
FROM `imperial-arcade-451016-n1.portfolio.funnel_users`
WHERE began_checkout

UNION ALL

SELECT 'Purchase', COUNT(DISTINCT user_pseudo_id)
FROM `imperial-arcade-451016-n1.portfolio.funnel_users`
WHERE purchased