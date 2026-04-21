# GA4 Data Model Notes

## Overview

Google Analytics 4 stores data in an event-based format.

Each row represents an event, such as:
- `page_view`
- `view_item`
- `add_to_cart`
- `begin_checkout`
- `purchase`

Unlike flat transactional datasets, GA4 contains nested structures that require extraction before they can be used for reporting.

---

## Key Concepts

### 1. Event-based model
GA4 does not store behaviour in a classic relational business format by default.  
Instead, user activity is recorded as events.

### 2. Nested event parameters
Important attributes such as:
- session ID
- page location
- page title
- engagement time
- purchase value

are often stored inside `event_params`.

### 3. UNNEST logic
To analyse GA4 data in SQL, nested fields such as `event_params` must be unpacked using `UNNEST()`.

This is one of the most important technical aspects of working with GA4 exports in BigQuery.

---

## Example of extracted attributes

Typical extracted fields in this project include:
- `event_name`
- `user_pseudo_id`
- `ga_session_id`
- `page_location`
- `engagement_time_msec`

---

## Why it matters

Without flattening and transforming the raw GA4 export:
- reporting is harder
- business metrics are not directly readable
- funnel logic is difficult to model
- dashboards become less reliable or less clear

This is why the SQL transformation layer is a central part of the project.
