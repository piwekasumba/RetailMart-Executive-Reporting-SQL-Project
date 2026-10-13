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

The following findings are calculated from the supplied RetailMart sample data and reporting SQL. The dataset is simulated and contains sales transactions dated 1–10 September 2025. These figures should be confirmed against the actual PostgreSQL query outputs before being presented as independently verified database results.

|             Measure              |                                   Finding from supplied sample data                                                                               | Validation source |
|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|---|
| Recorded sales transactions      | 20 transactions                                                                                                                                   | Query 01 |
| Gross sales                      | R1,867.57                                                                                                                                         | Query 01 |
| Average transaction value        | R93.38                                                                                                                                            | Query 01 |
| Total recorded refunds           | R434.91 across 5 return records                                                                                                                   | Query 11 |
| Net sales after recorded refunds | R1,432.66, calculated as gross sales less recorded refunds                                                                                        | Query 16 |
| Transaction-based return rate    | 25.00%, based on 5 distinct returned transactions out of 20 sales transactions                                                                    | Query 16 |
| Store target comparison          | September 2025 targets compared with sales recorded from 1–10 September 2025                                                                      | Query 13 |
| Employee sales attribution       | Employee-store mismatches are present in the supplied sample data and require investigation | Query 07 and source data |
| Executive KPI summary            | 20 transactions, R1,867.57 gross sales, R93.38 average transaction value, 20 customers, 15 products, 10 stores, 10 employees and 5 return records | Query 15, reconciled with Queries 01 and 11 |

### Reporting validation notes

**Gross sales and transaction values**

Query 01 calculates transaction count, total recorded sales value and average transaction value from the `sales` table. The supplied sample data totals R1,867.57 across 20 transactions, giving an average transaction value of R93.38 after rounding.

**Returns and net sales**

Query 11 calculates the total recorded refund value from the `returns` table. The five supplied return records total R434.91. Query 16 subtracts those recorded refunds from gross sales to calculate net sales after recorded refunds of R1,432.66.

This is a calculation based on recorded refund amounts, not a claim that all returns have been fully processed or that the result represents accounting-recognised net revenue.

**Transaction-based return rate**

Query 16 calculates the percentage of sales transactions associated with at least one return record. In the supplied data, five distinct transactions have return records out of 20 total sales transactions, producing a rate of 25.00%.

This is a transaction-based measure, not the percentage of items returned or the percentage of sales value refunded.

**Store sales target comparison**

Query 13 compares store sales recorded during September 2025 with monthly targets dated September 2025. Although the targets cover the month, the supplied sales records cover only 1–10 September 2025.

Consequently, the actual-sales figures represent a partial-month period and should not be presented as final September results or used to claim that a store met or missed its full-month target.

**Employee sales attribution**

Query 07 joins sales to employees and reports each employee under the store assigned to that employee in the `employees` table. The supplied data includes sales where `sales.store_id` differs from the assigned `employees.store_id`.

These mismatches should be investigated before employee-level or store-level employee performance findings are treated as reliable. The query's current store label reflects the employee's assigned store, not necessarily the store where the transaction occurred.

**Executive KPI reconciliation**

Query 15 repeats the transaction count, total sales value, average transaction value, return count and refund total reported by Queries 01 and 11. The overlapping measures should reconcile when the queries run against the same unchanged database state.

### Calendar coverage validation

Query 09 uses the `calendar` table to generate monthly reporting periods for 2025 and left-joins sales to those periods. The supplied calendar load covers 1 January to 31 December 2025, while the supplied sales data covers 1–10 September 2025.

Expected monthly report structure:

| Reporting period      | Expected transactions | Expected gross sales |
|-----------------------|----------------------:|---------------------:|
| January–August 2025   | 0 per month           | R0.00 per month      |
| September 2025        | 20                    | R1,867.57            |
| October–December 2025 | 0 per month           | R0.00 per month      |

If the calendar contains all 12 months and the query executes successfully, Query 09 should return 12 rows, retaining the months without sales. The September average transaction value should be R93.38; the query displays R0.00 for months without transactions because of its `COALESCE` expression.

Validate the calendar coverage and monthly report directly in PostgreSQL before treating these expected results as confirmed query outputs.

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
