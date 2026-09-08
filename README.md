# RetailMart Executive Reporting SQL Project

A PostgreSQL portfolio project focused on **business reporting, KPI analysis, data quality, reconciliation and management-focused SQL reporting** using simulated South African retail data.

The project demonstrates how I approach a reporting problem from the **business question through SQL analysis, validation, reconciliation and reporting interpretation** rather than treating a SQL query as the final answer.

> **Portfolio focus:** Junior Reporting Analyst | SQL | PostgreSQL | KPI Reporting | Data Quality | Business Reporting | Reconciliation

---

## Why This Project Exists

Retail businesses generate transactional data across stores, products, employees, customers, returns and sales targets.

The reporting challenge is not simply to calculate a number.

A reporting analyst also needs to consider:

* What business question is being answered?
* Which transactions should be included?
* How should the KPI be defined?
* Is the underlying data reliable?
* Could joins duplicate or exclude records?
* Are returns or cancellations treated consistently?
* Can the result be reconciled and validated?
* What does the result actually tell the business?

This project uses PostgreSQL and SQL to practise that reporting workflow using a simulated retail environment.

---

## Business Context

The project represents a simulated South African retail business with reporting needs across:

* Store performance
* Product performance
* Employee sales performance
* Customer activity
* Provincial performance
* Returns
* Sales targets
* Executive-level KPIs

The dataset is simulated and does not represent a real company or real customer information.

---

## Project Objective

The objective is to build a relational retail database in PostgreSQL and use SQL to produce business-focused reporting outputs.

The project follows this reporting workflow:

**Business Question → Data → KPI Definition → SQL Logic → Validation → Reporting Output → Business Interpretation**

The emphasis is on understanding why the number is being calculated, how it should be validated and what the result could help a reporting user investigate.

---

## Industry Reporting Focus

Retail is used deliberately because it provides several practical reporting dimensions.

### Store performance

Revenue, sales activity and target performance can be compared across locations.

### Product performance

Product-level sales can be analysed to understand contribution and differences in performance.

### Customer activity

Customer transactions can be aggregated to examine spending patterns.

### Employee performance

Employee-level sales information can be used for structured performance reporting.

### Returns

Returns can be analysed as part of the reporting process rather than being treated as an isolated dataset.

### Regional performance

Provincial reporting provides another dimension for comparing business activity.

This gives the project a business context rather than presenting SQL syntax without an operational question.

---

## Tools & Technologies

* PostgreSQL 18
* SQL
* Relational database design
* SQL joins
* Aggregate functions
* `GROUP BY`
* `ORDER BY`
* Filtering
* KPI calculations
* Data validation concepts
* Business reporting analysis

---

## Dataset

The project uses simulated retail data representing a South African retail environment.

The relational dataset includes business entities such as:

* Stores
* Products
* Employees
* Customers
* Sales transactions
* Returns
* Sales targets

The data is used for portfolio and learning purposes only.

It does not represent real company, customer or employee information.

---

## Reporting Questions

The project is organised around practical management-reporting questions.

| Business Question                           | SQL Analysis                      | Reporting Purpose                        |
| ------------------------------------------- | --------------------------------- | ---------------------------------------- |
| Which stores generate the highest revenue?  | Aggregate sales by store          | Compare store performance                |
| Which products contribute most to sales?    | Aggregate sales by product        | Understand product contribution          |
| Which employees generate the highest sales? | Join employees to transactions    | Compare sales performance                |
| Which customers spend the most?             | Aggregate customer transactions   | Understand customer activity             |
| Which provinces perform best?               | Aggregate revenue by province     | Compare regional performance             |
| What does returns activity show?            | Analyse return transactions       | Identify areas requiring investigation   |
| Are stores meeting sales targets?           | Compare actual sales with targets | Measure performance against expectations |

---

## SQL Analysis

The reporting queries cover:

* Executive KPI summary
* Revenue by store
* Product performance
* Employee performance
* Customer spending
* Revenue by province
* Returns analysis
* Store target performance

The analysis uses relational joins and aggregation to move from transaction-level records to reporting-level information.

---

## Example Reporting Workflow

### Business Question

**Which stores are performing above or below target?**

### Data

Relevant sales transactions, store information and sales-target information.

### SQL Analysis

Aggregate actual sales and compare them with the corresponding target.

### Reporting Output

A store-level performance comparison.

### Business Interpretation

Identify performance gaps that may require further investigation.

The purpose is not to assume why a store is above or below target.

The SQL result provides evidence for the next business question.

---

## KPI Definition & Reporting Logic

A KPI is only useful when its definition is clear.

Before comparing revenue or another measure, a reporting analyst needs to understand:

* Which transactions are included?
* Which date field determines the reporting period?
* How are returns treated?
* Are cancelled transactions included?
* Are duplicate transactions possible?
* Which tables provide the required fields?
* Could a join duplicate transactions?
* Are the same definitions being applied consistently?

This project therefore treats **KPI definition and validation as part of reporting**, rather than assuming that a calculated number is automatically meaningful.

---

## Reconciliation & Data Quality Thinking

A central reporting principle demonstrated by this project is:

> **Before deciding which number is right, understand why the numbers disagree.**

If two apparently correct reports produced different totals, possible investigation areas include:

* Different date ranges
* Different KPI definitions
* Different treatment of returns
* Different treatment of cancellations
* Different source tables
* Join duplication
* Missing records
* Duplicate transactions
* Different filters
* Different assumptions

This is important because a reporting analyst should be able to investigate a discrepancy rather than simply select the number that looks more reasonable.

---

## Business Reporting Examples

### Store Performance

**Question:** Which stores generate the highest revenue?

Sales transactions are aggregated by store to create a comparable store-level reporting view.

The result can provide a starting point for investigating differences in:

* Sales volume
* Customer activity
* Product mix
* Target achievement
* Store-level performance

---

### Product Performance

**Question:** Which products contribute most to sales?

Sales are aggregated by product to identify differences in product contribution.

The result can support further questions around:

* Product mix
* Store performance
* Regional demand
* Sales concentration

---

### Sales Target Performance

**Question:** Are stores achieving their sales targets?

Actual sales are compared with the available target information.

This provides a more useful performance measure than revenue alone because it considers actual performance relative to an expected level.

---

### Returns

**Question:** What does returns activity show?

Return activity is analysed alongside relevant retail transactions.

The purpose is not to assume that returns are automatically negative.

Instead, the analysis provides an evidence base for further investigation into return patterns and their relationship with reported sales performance.

---

## Data Quality Considerations

Reliable reporting depends on the quality and structure of the underlying data.

This project considers:

* Primary and foreign-key relationships
* Correct table relationships
* Appropriate SQL joins
* Consistent reporting definitions
* Accurate aggregation
* Transaction-level duplication risks
* Appropriate filtering
* KPI validation
* Returns and exclusions
* Consistency of reporting logic

A production reporting environment would require additional controls based on the organisation, source systems, governance requirements and reporting standards.

---

## Key Portfolio Evidence

This project provides practical portfolio evidence of:

* PostgreSQL
* SQL querying
* Relational data analysis
* SQL joins
* Aggregation
* KPI calculations
* Business-question translation
* Data-quality awareness
* Reporting validation
* Reconciliation thinking
* Business-focused interpretation

It is deliberately presented as a portfolio project and does not claim professional enterprise reporting experience.

---

## Project Structure

```text
RetailMart-Executive-Reporting-SQL-Project
│
├── README.md
│
├── SQL
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   └── 03_reporting_queries.sql
│
└── Images
```

---

## How to Run

1. Install PostgreSQL.
2. Create a PostgreSQL database for the project.
3. Run `SQL/01_create_tables.sql`.
4. Run `SQL/02_insert_data.sql`.
5. Run `SQL/03_reporting_queries.sql`.
6. Review the query outputs.
7. Compare the results against the business questions and reporting definitions.

---

## What This Project Demonstrates

I am using this project to demonstrate that I can:

* Work with PostgreSQL
* Query relational business data
* Join related tables
* Aggregate transactional information
* Calculate reporting KPIs
* Translate business questions into SQL
* Think about data quality before reporting
* Validate reporting logic
* Investigate differences between reported numbers
* Explain what a SQL result means from a business-reporting perspective

---

## Career Relevance

This project is part of my portfolio as I build practical evidence toward **Junior / Entry-Level Reporting Analyst opportunities in Johannesburg, Gauteng and credible remote opportunities across South Africa**.

My current technical focus is PostgreSQL and SQL.

I am deliberately building evidence around the reporting capabilities that sit around SQL:

**Business Question → Data → SQL → Validation → Reporting → Interpretation**

The project demonstrates practical learning and potential through portfolio work. It does not claim professional reporting experience.

---

## Portfolio Position

This is the **flagship reporting project** in my SQL portfolio.

It is complemented by:

* **Insurance Claims Risk Analytics SQL Project** — insurance claims, risk and KPI reporting
* **Retail Sales Analytics ETL Data Pipeline Project** — data preparation and transformation for reporting
* **SQL Data Analytics Fundamentals for Business Reporting** — foundational SQL and relational-data skills

Together, the projects show progression from:

**SQL Fundamentals → Data Preparation → Applied Industry Reporting → Business-Focused Analysis**

---

## About

I am building practical SQL projects focused on PostgreSQL, business reporting, KPI analysis and data quality as I work toward an entry-level Reporting Analyst career.

My goal is to develop the ability to move beyond writing queries and understand how data can support clear, reliable business reporting.

