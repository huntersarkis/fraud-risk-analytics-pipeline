# Fraud Risk Analytics Pipeline

This project analyzes credit card transactions to identify fraud patterns using Python and SQL.

## Tools Used

* Python (pandas)
* SQLite
* SQL
* GitHub

## Project Workflow

1. Load raw transaction data into SQLite using Python.
2. Store the data in a table called `raw_transactions`.
3. Use SQL queries to analyze fraud patterns.

## SQL Analysis

* **fraud_summary.sql** – overall fraud statistics
* **fraud_by_hour.sql** – fraud patterns by time of day
* **fraud_by_amount_bucket.sql** – fraud patterns by transaction amount

## Key Insight

Fraud activity is highest during early morning hours (around **2–4 AM**) and decreases during the daytime.

## Dataset

Credit Card Fraud Detection dataset containing **284,807 transactions**, with **492 fraud cases**.

## Goal

Practice building a simple analytics pipeline with Python and SQL while exploring fraud risk patterns.
