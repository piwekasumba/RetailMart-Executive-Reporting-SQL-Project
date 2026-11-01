# RetailMart Executive Reporting SQL Project
---
A self-directed PostgreSQL portfolio project demonstrating retail business reporting, KPI analysis, SQL querying, data-quality awareness and reporting validation using simulated South African retail data.

The project follows a structured reporting process:

**Business Question → KPI Definition → SQL → Validation → Reporting Output → Interpretation**
---
## Project Overview

RetailMart is a simulated retail business database created to practise answering practical business reporting questions using PostgreSQL.

The project brings together sales, customers, products, stores, employees, returns and sales targets to demonstrate how relational data can be used to produce management-focused reporting.

The focus is not only on calculating figures, but also on defining what each KPI measures, checking the underlying data and recognising when reporting results require further investigation.

This is independent portfolio work using simulated data. It does not represent professional employment, a real company's operations or actual business performance.
---
## Project Objectives

- Build a relational retail database using PostgreSQL.
- Write SQL queries to answer practical business questions.
- Calculate and interpret retail reporting KPIs.
- Analyse sales across stores, provinces, products and customers.
- Examine recorded returns and refund values.
- Compare recorded sales with monthly store targets.
- Apply data-quality checks and reporting validation.
- Identify limitations that affect the interpretation of reporting results.
---
## Tools and Technologies

- **Database:** PostgreSQL 18
- **Query language:** SQL
- **Database management:** pgAdmin 4
- **SQL techniques:** Joins, filtering, aggregation, subqueries and KPI calculations
- **Reporting concepts:** Retail performance reporting, target comparisons and executive summaries
- **Validation concepts:** Relational integrity, record-count checks, reconciliation and reporting-period checks
---
## Dataset

The database contains eight relational tables:

| Table | Purpose |
|---|---|
| customers | Customer information |
| products | Product information |
| stores | Store and location information |
| employees | Employee information |
| sales | Recorded sales transactions |
| returns | Recorded returns and refund values |
| targets | Monthly store sales targets |
| calendar | Reporting dates for 2025 |
---
### Sample data

| Data category | Records |
|---|---:|
| Customers | 20 |
| Products | 15 |
| Stores | 10 |
| Employees | 10 |
| Sales transactions | 20 |
| Returns | 5 |
| Monthly store targets | 10 |
| Calendar coverage | 1 January–31 December 2025 |

All records are simulated and intended for learning and portfolio demonstration.
---
## SQL Reporting Queries

The main reporting script is:

`SQL/03_reporting_queries.sql`

It contains 15 numbered core reporting queries, with additional reporting queries extending the analysis.

| Query | Analysis | Reporting purpose |
|---|---|---|
| 01 | Executive sales summary | Summarise transaction count, gross sales and transaction values |
| 02 | Revenue by store | Compare recorded sales across stores |
| 03 | Revenue by province | Examine sales across provinces |
| 04 | Product performance | Compare product sales and units sold |
| 05 | Revenue by product category | Examine category contribution |
| 06 | Top customers by spend | Identify customers with the highest recorded spend |
| 07 | Employee sales performance | Summarise sales attributed to employees |
| 08 | Daily sales report | Review daily transaction activity |
| 09 | Monthly sales report | Summarise sales by calendar month |
| 10 | Average transaction value by store | Compare average transaction values |
| 11 | Returns summary | Summarise recorded returns and refunds |
| 12 | Return performance by product | Compare refund values by product |
| 13 | Store sales target performance | Compare recorded sales with monthly targets |
| 14 | Top five sales transactions | Identify the highest-value transactions |
| 15 | Executive KPI summary | Consolidate key business counts and measures |

Additional reporting queries extend the analysis to include net sales after recorded refunds and transaction-based return-rate calculations.
---
## KPI Definitions

The following definitions establish the reporting rules used in the project.

| KPI | Definition |
|---|---|
| Gross sales | Sum of `sales.total_amount` before deducting recorded refunds |
| Transaction count | Count of sales records using `COUNT(sale_id)` |
| Average transaction value | Gross sales divided by the number of recorded sales transactions |
| Total refund value | Sum of `returns.refund_amount` |
| Net sales after recorded refunds | Gross sales less recorded refund amounts, subject to the stated reporting-period and inclusion rules |
| Transaction-based return rate | Distinct sales transactions with at least one recorded return divided by the defined sales transaction cohort, multiplied by 100 |
| Target achievement percentage | Recorded sales divided by the corresponding sales target, multiplied by 100 |
| Variance to target | Recorded sales less the corresponding target amount |

A transaction-based return rate is not the same as a returned-unit rate or a refund-value percentage. The reporting definition must be clear before interpreting the result.
---
## Reporting Findings

The following figures are calculated from the supplied simulated sample data. They are presented as indicative portfolio findings and should be confirmed against actual PostgreSQL execution outputs before being treated as independently verified database results.

| Measure | Finding |
|---|---:|
| Recorded sales transactions | 20 |
| Gross sales | R1,867.57 |
| Average transaction value | R93.38 |
| Recorded refund value | R434.91 |
| Number of return records | 5 |
| Net sales after recorded refunds | R1,432.66 |
| Transaction-based return rate | 25.00% |
| Customer records | 20 |
| Product records | 15 |
| Store records | 10 |
| Employee records | 10 |
---
### 1. Sales reporting

The supplied sales data contains 20 transactions with total recorded gross sales of R1,867.57.

The resulting average transaction value is R93.38 after rounding.

These measures provide a basic summary of recorded sales activity.
---
### 2. Returns and refunds

The five supplied return records have a combined recorded refund value of R434.91.

Subtracting this amount from gross sales produces calculated net sales after recorded refunds of R1,432.66.

This is a calculation using the supplied refund records. It does not establish that every return has been fully processed or that the result represents accounting-recognised net revenue.
---
### 3. Transaction-based return rate

Five distinct sales transactions have at least one associated return record out of 20 recorded sales transactions.

The calculation is:

`(5 / 20) × 100 = 25.00%`

This measures the proportion of transactions associated with recorded returns. It does not measure the proportion of individual units returned or the percentage of sales value refunded.
---
### 4. Store sales target comparison

The project compares September 2025 store targets with the supplied sales transactions.

However, the available sales records cover only 1–10 September 2025, while the targets represent the full month.

The comparison therefore represents partial-month recorded sales against full-month targets. It must not be presented as final September performance or as evidence that a store met or missed its full-month target.
---
### 5. Employee sales attribution

The supplied data contains instances where `sales.store_id` differs from the store assigned to an employee in the `employees` table.

The employee reporting query uses the employee's assigned store when presenting employee sales.

These differences require investigation before employee-level or employee-associated store performance is interpreted as reliable. The employee's assigned store should not automatically be treated as the location where a transaction occurred.
---
### 6. Executive KPI reconciliation

Query 15 consolidates key measures that overlap with the executive sales summary and returns summary.

The overlapping transaction counts, sales totals, average transaction values, return counts and refund totals should reconcile when the queries run against the same unchanged database state.
---
## Data Quality and Reporting Validation

The database includes relational constraints, foreign keys, checks, unique email values and indexes intended to support data integrity and common reporting operations.

The reporting process also considers:

- Whether sales totals agree with transaction-level calculations.
- Whether joins unintentionally multiply records.
- Whether record counts change unexpectedly after joins.
- Whether duplicate or unexpected records exist.
- Whether missing values affect KPI calculations.
- Whether refund values are included consistently.
- Whether the sales period matches the target period.
- Whether employee and store relationships require investigation.
- Whether reporting outputs answer the original business question.

Database constraints help protect data integrity, but they do not independently prove that every reporting calculation is correct.

Validation must also consider the logic, relationships, reporting grain and business definitions behind each result.
---
## Calendar Coverage and Reporting Periods

The calendar table is designed to cover 1 January to 31 December 2025.

The supplied sales transactions cover only 1–10 September 2025.

The expected monthly reporting structure is:

| Reporting period      | Expected transactions | Expected gross sales |
|-----------------------|----------------------:|---------------------:|
| January–August 2025   | 0 per month           | R0.00 per month      |
| September 2025        | 20                    | R1,867.57            |
| October–December 2025 | 0 per month           | R0.00 per month      |

Query 09 uses the calendar table to support monthly reporting, including months without recorded sales.

If the calendar contains all 12 months and the query executes successfully, the expected output is 12 monthly rows.

The expected results should be confirmed against PostgreSQL execution outputs before being treated as verified.

Because the supplied sales data covers only one month, the project does not establish a meaningful month-over-month sales trend.
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
---
## How to Run the Project

Run the SQL scripts in the following order using a fresh PostgreSQL database:

1. Create a PostgreSQL database for the project.
2. Execute `SQL/01_create_tables.sql` to create the relational tables and database structures.
3. Execute `SQL/02_insert_data.sql` to insert the simulated sample records.
4. Execute `SQL/03_reporting_queries.sql` to run the reporting queries.
5. Review the numbered reporting queries and their outputs.
6. Compare calculated measures with the documented KPI definitions.
7. Check reporting totals, joins, record counts and reporting periods.
8. Confirm the findings against the actual query outputs.

The reporting queries depend on the database structures and sample data being created first.
---
## What This Project Demonstrates

This project provides practical evidence of learning and application in:

- PostgreSQL database querying.
- Relational data analysis using SQL joins.
- Filtering, grouping and aggregation.
- Business-focused reporting questions.
- Retail KPI definitions and calculations.
- Sales, product, customer and store reporting.
- Returns and refund analysis.
- Sales target comparisons.
- Data-quality awareness and reporting validation.
- Careful interpretation of reporting results and limitations.
---
## Project Limitations

This is a self-directed portfolio project using simulated data.

It does not demonstrate:

- Professional analyst employment experience.
- Production database or enterprise reporting operations.
- Real company performance or financial results.
- Enterprise data governance.
- A multi-month historical sales trend.
- Independently verified production reporting outcomes.

The quality and interpretation of the findings are limited by the available sample records, reporting periods and defined business rules.
---
## Career Relevance

This project supports my development toward entry-level opportunities such as:

- Junior Reporting Analyst.
- Junior Data Analyst.
- SQL Reporting Analyst.
- Management Information (MI) Reporting Analyst.
- Data Quality and Reporting roles.

The project demonstrates my developing ability to use PostgreSQL and SQL to structure reporting questions, calculate business measures, review data relationships and consider whether results are suitable for interpretation.
---
## About

I am developing practical SQL and PostgreSQL skills through self-directed portfolio projects focused on business reporting, KPI analysis, data quality and reporting validation.

RetailMart is an independent learning project demonstrating my applied SQL work with simulated retail data. It is not professional employment experience.
