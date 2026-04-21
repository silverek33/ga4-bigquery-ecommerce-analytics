# GA4 Ecommerce Analytics (BigQuery + Looker Studio)

End-to-end analytics project based on Google Analytics 4 ecommerce event data, transformed in BigQuery using SQL and visualised in Looker Studio.

The project focuses on turning raw nested GA4 data into a clean analytical layer that supports:
- traffic analysis
- event behaviour tracking
- ecommerce funnel monitoring
- product-level conversion insights

---

## 🔍 Live Dashboard

👉 https://datastudio.google.com/reporting/0419a67c-e7ed-47e3-95c0-5dae11c45791/page/tEnnC

---

## ⚙️ Tech Stack

- Google Analytics 4 (event data)
- BigQuery (data warehouse)
- SQL (data transformation)
- Looker Studio (data visualisation)

---

## 🧱 Architecture

GA4 raw events → BigQuery → SQL transformation layer → Looker Studio dashboard

The transformation layer is built using SQL views that structure event-based data into business-friendly entities.

---

## 📊 Data Model

The project uses GA4 public dataset:
bigquery-public-data.ga4_obfuscated_sample_ecommerce

Key challenge:
- GA4 data is nested (event_params)
- requires flattening and transformation

---

## 🧩 SQL Layer Overview

### 1. fact_events.sql

Creates a flattened base table from GA4 events.

Includes:
- event_name
- session_id
- page location
- engagement metrics

Used as foundation for all further analysis.

---

### 2. funnel_steps.sql

Defines ecommerce funnel steps:
- view_item
- add_to_cart
- begin_checkout
- purchase

Aggregates user actions per step.

---

### 3. funnel_users.sql

Tracks unique users per funnel stage.

Used to:
- measure drop-offs
- analyse user progression

---

### 4. funnel_steps_cr.sql

Calculates conversion rates between steps.

Example:
- view_item → add_to_cart
- add_to_cart → purchase

---

### 5. product_performance.sql

Analyses product-level performance:
- views
- add_to_cart
- purchases
- cart-to-purchase rate

---

## 📈 Business Insights

The dashboard allows:
- identification of funnel drop-off points
- evaluation of checkout efficiency
- comparison of product conversion performance
- understanding of user behaviour patterns

---

## 🧠 What this project demonstrates

- ability to work with real event-based analytics data
- strong SQL transformation skills
- understanding of GA4 data structure
- building a full analytics pipeline (data → warehouse → dashboard)
- translating technical data into business insights

---

## 🚀 Author

Sylwester Kuźma  
Data / SAP / IT  
