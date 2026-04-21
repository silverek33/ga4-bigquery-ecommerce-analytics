# Project Assumptions

## Source
The project is based on the public GA4 ecommerce dataset available in BigQuery:

`bigquery-public-data.ga4_obfuscated_sample_ecommerce`

---

## Reporting Scope

The analysis focuses on selected ecommerce and behavioural events:
- `page_view`
- `view_item`
- `add_to_cart`
- `begin_checkout`
- `purchase`

---

## Funnel Definition

The ecommerce funnel is defined as:

1. `view_item`
2. `add_to_cart`
3. `begin_checkout`
4. `purchase`

This funnel is used to analyse user progression and drop-off between steps.

---

## Session Logic

Sessions are based on GA4 session identifiers stored in event parameters, typically extracted using:

- `ga_session_id`

A session is usually represented as a combination of:
- `user_pseudo_id`
- `ga_session_id`

---

## Product Logic

Product-level reporting is based on product-related ecommerce events and selected product attributes available in the dataset.

Metrics include:
- product views
- add to cart actions
- checkout starts
- purchases
- cart-to-purchase rate

---

## Modelling Assumption

The SQL files in this repository are treated as transformation logic for a reporting layer, not as a full production-grade data warehouse model.

The goal of the project is portfolio presentation and business-oriented analytics, rather than enterprise deployment.
