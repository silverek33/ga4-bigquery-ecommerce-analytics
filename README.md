# GA4 Ecommerce Analytics (BigQuery + Looker Studio)

End-to-end analytics project based on Google Analytics 4 ecommerce event data, transformed in BigQuery using SQL and visualised in Looker Studio.

The goal of the project was to turn raw, nested GA4 event data into a business-friendly analytical layer that supports:
- traffic and event analysis
- ecommerce funnel monitoring
- conversion tracking
- product-level performance evaluation

---

## Live Dashboard

Open the interactive dashboard here:

[View Looker Studio Dashboard](https://datastudio.google.com/reporting/0419a67c-e7ed-47e3-95c0-5dae11c45791/page/tEnnC)

---

## Tech Stack

- Google Analytics 4
- BigQuery
- SQL
- Looker Studio

---

## Architecture

GA4 raw ecommerce events → BigQuery → SQL transformation layer → Looker Studio dashboard

The project uses a reporting layer built with SQL views to convert nested event data into structured entities for analysis and visualisation.

---

## Source Data

This project uses the public GA4 ecommerce dataset available in BigQuery:

`bigquery-public-data.ga4_obfuscated_sample_ecommerce`

The main challenge of this dataset is its nested structure, especially the use of `event_params`, which requires extraction and flattening logic through SQL.

---

## Project Scope

The final solution covers:

- overview KPIs
- event distribution
- page-level activity
- ecommerce funnel analysis
- conversion rate logic
- product performance analysis

---

## SQL Layer

The repository contains SQL logic used to build the reporting layer:

- `fact_events.sql` – flattened base layer for selected GA4 event attributes
- `funnel_steps.sql` – funnel step mapping for ecommerce events
- `funnel_users.sql` – unique users reaching each funnel stage
- `funnel_steps_cr.sql` – conversion rate logic between funnel stages
- `product_performance.sql` – product-level performance metrics

---

## Business Value

This project demonstrates how raw GA4 ecommerce data can be transformed into a structured analytical model that helps answer business questions such as:

- Where do users drop off in the funnel?
- How efficient is the checkout process?
- Which products get attention but do not convert?
- How do user actions translate into purchases?

---

## What This Project Demonstrates

- ability to work with real event-based analytics data
- SQL transformation skills in BigQuery
- understanding of nested GA4 structure
- building an analytics pipeline from source data to dashboard
- translating technical data into business-oriented reporting

---

## Repository Notes

The SQL files in this repository represent the transformation logic used to build the reporting layer.  
If needed, they can be adapted into views or tables in a BigQuery dataset.

---

## Author

**Sylwester Kuźma**  
Data / SAP / IT
