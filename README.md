# RetailMart Executive Reporting SQL Project

A PostgreSQL portfolio project focused on retail reporting, KPI analysis, data quality, validation and management-reporting SQL using simulated South African retail data.

The project demonstrates the reporting process:

**Business Question → KPI Definition → SQL → Validation → Reporting Output → Interpretation**
---

## Project Objective

The objective is to build a relational retail database and use PostgreSQL to answer practical reporting questions involving sales, stores, products, customers, employees, returns and sales targets.

This is a self-directed portfolio project using simulated data. It does not represent professional employment or the performance of a real company.
---

## Tools and Technologies

- PostgreSQL 18
- SQL and relational databases
- Joins, filtering, aggregation and subqueries
- KPI calculations
- Data-quality checks and reporting validation
---

## Dataset

The database contains eight tables:

- customers
- products
- stores
- employees
- sales
- returns
- targets
- calendar

The sample data represents 20 customers, 15 products, 10 stores, 10 employees, 20 sales transactions, five returns and 10 monthly store targets.

The data is simulated and intended for learning and portfolio demonstration.
---

## Reporting Queries

The file - SQL/03_reporting_queries.sql - contains 15 numbered SQL queries.

|Query|        Analysis                 |           Reporting purpose                                     |
|----|------------------------------------|-----------------------------------------------------------------|
| 01 | Executive sales summary            | Summarise transaction count, gross sales and transaction values |
| 02 | Revenue by store                   | Compare store sales                                             |
| 03 | Revenue by province                | Compare provincial sales                                        |
| 04 | Product performance                | Compare product sales and units sold                            |
| 05 | Revenue by product category        | Compare category contribution                                   |
| 06 | Top customers by spend             | Review customer transaction value                               |
| 07 | Employee sales performance         | Summarise sales by employee                                     |
| 08 | Daily sales report                 | Review daily transaction activity                               |
| 09 | Monthly sales report               | Summarise sales by calendar month                               |
| 10 | Average transaction value by store | Compare average transaction values                              |
| 11 | Returns summary                    | Summarise returns and refunds                                   |
| 12 | Return performance by product      | Compare refund values by product                                |
| 13 | Store sales target performance     | Compare recorded sales with monthly targets                     |
| 14 | Top five sales transactions        | Identify the highest-value transactions                         |
| 15 | Executive KPI summary              | Consolidate key business counts and measures                    |
---

## KPI Definitions

The following definitions apply to the existing sample queries unless a report explicitly states otherwise.

- Gross sales: Sum of sales.total_amount for the selected transactions before deducting refunds.
- Transaction count: Count of sales records using COUNT(sale_id). Each row represents one recorded transaction in this dataset.
- Average transaction value: Gross sales divided by the number of recorded sales transactions.
- Total refund value: Sum of returns.refund_amount for the selected return records.
- Net sales after recorded refunds: Gross sales less recorded refund amounts, with the reporting period and refund inclusion rules stated explicitly.
- Transaction-based return rate: Number of distinct sales transactions with at least one recorded return divided by the number of sales transactions in the defined sales cohort, multiplied by 100.
- Target achievement percentage: Recorded sales divided by the corresponding sales target, multiplied by 100.
- Variance to target: Recorded sales less the corresponding target amount.

A return rate based on returned transactions is different from a return rate based on returned units or refund value. The chosen definition must be stated in the report.
---

## Data Quality and Validation

The project includes relational constraints, foreign keys, checks, unique email values and indexes for common joins and date filtering.

Reporting validation should also consider:

- Whether sales totals agree with transaction-level calculations.
- Whether joins unintentionally multiply records.
- Whether duplicate or unexpected records exist.
- Whether refunds are included consistently.
- Whether the sales period matches the target period.
- Whether missing values affect a calculation.
- Whether the output answers the stated business question.

Database constraints support data integrity but do not, by themselves, prove that every reporting result is correct.

---

## Reporting Findings

The following findings must be populated from the actual PostgreSQL query outputs before being presented as verified results.

| Measure                          | Verified result                                |
|----------------------------------|------------------------------------------------|
| Recorded sales transactions      | Run Query 01                                   |
| Gross sales                      | Run Query 01                                   |
| Average transaction value        | Run Query 01                                   |
| Total recorded refunds           | Run Query 11                                   |
| Net sales after recorded refunds | Run the additional net-sales query             |
| Store target comparison          | Run Query 13 and state the exact dates covered |
---

### Interpretation

The sample sales transactions cover 1–10 September 2025, while the store targets are monthly targets for September 2025.

Consequently, the target comparison must not be described as a final full-month performance result. The available sales records cover only the first ten days of September.

The dataset contains only one month of sales. A month-over-month trend or ranking over multiple months would require additional monthly sales data before meaningful conclusions could be drawn.

---

## Project Structure

```text
RetailMart-Executive-Reporting-SQL-Project/
├── README.md
├── SQL/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   └── 03_reporting_queries.sql
└── Images/

```

## How to Run

1. Create a PostgreSQL database for the project.
2. Run - SQL/01_create_tables.sql.
3. Run - SQL/02_insert_data.sql.
4. Run - SQL/03_reporting_queries.sql.
5. Review each numbered query and compare its output with the KPI definitions.
6. Run the additional reporting queries after the existing 15 queries.
7. Record actual outputs and validate the results before completing the findings section.

Run the scripts in the stated order in a fresh database.

---

## What This Project Demonstrates

- Writing SQL to answer business questions.
- Joining and aggregating relational data.
- Calculating and interpreting reporting measures.
- Comparing store and product performance.
- Analysing recorded returns and sales targets.
- Considering data quality, date ranges and KPI definitions.
- Recognising the difference between a calculated result and a result that is ready to interpret.
---

## Limitations

This is a simulated portfolio project. It does not demonstrate production reporting, enterprise data governance, professional employment experience or real company performance.

The results are limited by the records, dates and business rules represented in the sample data.
---

## Career Relevance

This project supports my development toward entry-level opportunities in:

- Junior Reporting Analyst
- Reporting Analyst
- Junior Data Analyst
- SQL-focused reporting and data-quality roles

My focus is on SQL, PostgreSQL, KPI reporting, validation and business reporting, with Johannesburg/Gauteng as my primary job market and credible South African remote opportunities as a secondary target.

---

## About

I am developing practical SQL and PostgreSQL skills through self-directed projects focused on business reporting, KPI analysis and data quality. This project is evidence of my learning and portfolio work, not professional employment experience.

---
