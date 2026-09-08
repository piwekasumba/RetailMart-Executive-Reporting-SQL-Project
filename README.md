# RetailMart Executive Reporting SQL Project

A PostgreSQL portfolio project focused on **business reporting, KPI analysis, data quality and management-focused SQL reporting** using simulated South African retail data.

The project demonstrates how I approach a reporting problem from the **business question through SQL analysis, validation and reporting interpretation** rather than treating a SQL query as the final answer.

> **Portfolio focus:** Junior Reporting Analyst | SQL | PostgreSQL | KPI Reporting | Data Quality | Business Analysis

---

## Business Context

Retail businesses generate large volumes of transactional data across stores, products, employees, customers and returns.

For reporting purposes, the challenge is not simply to calculate revenue. A useful reporting process needs to answer questions such as:

* Which stores are performing strongly?
* Which products contribute most to sales?
* Which employees generate the highest sales?
* Which customers have the highest spending?
* How does performance differ across provinces?
* Which stores are above or below target?
* What does returns activity reveal?
* Can the reported KPI be trusted and consistently defined?

This project uses SQL to turn transactional retail data into structured reporting outputs that could support management review and further investigation.

---

## Project Objective

The objective is to build a relational retail database in PostgreSQL and use SQL to produce business-focused reporting.

The project demonstrates a reporting workflow of:

**Business Question → Data → SQL Logic → KPI / Measure → Validation → Reporting Output → Business Interpretation**

The emphasis is on connecting technical SQL work to the reporting question being answered.

---

## Industry Context

Retail and consumer-facing businesses are useful environments for demonstrating reporting skills because performance can be examined through multiple operational dimensions.

This project focuses specifically on:

* Store performance
* Product performance
* Employee sales performance
* Customer activity
* Provincial performance
* Returns
* Sales targets
* Executive-level KPI reporting

The project is intentionally simulated and does not represent the reporting environment of a real company.

---

## Tools & Technologies

* PostgreSQL 18
* SQL
* Relational database design
* SQL joins
* Aggregate functions
* `GROUP BY`
* `ORDER BY`
* KPI calculations
* Filtering
* Data validation concepts
* Business reporting analysis

---

## Dataset

The project uses simulated retail data representing a South African retail business.

The relational dataset contains business entities such as:

* Stores
* Products
* Employees
* Customers
* Sales transactions
* Returns
* Sales targets

The data is used for portfolio and learning purposes only and does not represent real customer or company information.

---

## Reporting Questions

The project is organised around practical reporting questions.

| Business Question                           | SQL Analysis                      | Reporting Purpose                        |
| ------------------------------------------- | --------------------------------- | ---------------------------------------- |
| Which stores generate the highest revenue?  | Aggregate sales by store          | Compare store performance                |
| Which products contribute most to sales?    | Aggregate sales by product        | Understand product contribution          |
| Which employees generate the highest sales? | Join employees to transactions    | Compare sales performance                |
| Which customers spend the most?             | Aggregate customer transactions   | Understand customer value                |
| Which provinces perform best?               | Aggregate revenue by province     | Compare regional performance             |
| What does returns activity show?            | Analyse return transactions       | Identify areas for investigation         |
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

The project uses relational joins and aggregation to move from transaction-level records to reporting-level information.

### Example Reporting Flow

**Business Question**

> Which stores are performing above or below target?

↓

**Data**

Sales transactions + store information + target information

↓

**SQL Analysis**

Aggregate actual sales and compare them with the relevant target.

↓

**Reporting Output**

A store-level performance comparison.

↓

**Business Interpretation**

Identify performance gaps that may require further investigation.

The purpose is not to assume why a store is under or over target. The SQL result provides evidence for the next business question.

---

## KPI Definition & Reporting Logic

A reporting KPI is only useful when its definition is clear.

For example, before comparing revenue between periods or stores, a reporting analyst needs to understand:

* Which transactions are included?
* Which date field determines the reporting period?
* How are returns treated?
* Are cancelled transactions included?
* Are duplicate records possible?
* Which tables provide the required fields?
* Could a join duplicate transactions?
* Is the same definition being applied consistently?

This project therefore treats **KPI definition and data validation as part of the reporting process**, rather than assuming that a calculated number is automatically meaningful.

---

## Reconciliation & Data Quality Thinking

A key reporting principle demonstrated by this project is:

> **Before deciding which number is right, understand why the numbers disagree.**

If two apparently correct reports produced different totals, possible investigation areas would include:

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

The project therefore develops the habit of investigating the reporting logic behind a number rather than simply accepting the first query result.

---

## Business Reporting Examples

### Store Performance

**Question:** Which stores generate the highest revenue?

Sales transactions are aggregated by store to create a comparable store-level reporting view.

The output can help identify differences in store performance and provide a starting point for investigating factors such as sales volume, customer activity, product mix or target achievement.

### Product Performance

**Question:** Which products contribute most to sales?

Sales are aggregated by product to identify differences in product contribution.

The output can support further questions around product mix, store performance and regional demand.

### Sales Target Performance

**Question:** Are stores achieving their sales targets?

Actual sales are compared with the available target information.

This creates a more useful performance measure than revenue alone because it considers performance relative to an expected level.

### Returns

**Question:** What does returns activity show?

Return activity is analysed alongside relevant retail transactions.

The purpose is not to label returns as automatically negative, but to identify patterns that may require additional investigation.

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

For a production reporting environment, additional controls would be required depending on the source systems and business requirements.

---

## Key Portfolio Evidence

This project demonstrates practical evidence of:

* PostgreSQL
* SQL querying
* Relational data analysis
* SQL joins
* Aggregation
* KPI calculations
* Business-question translation
* Data quality awareness
* Reporting validation
* Reconciliation thinking
* Business-focused interpretation

It is deliberately positioned as a **portfolio project**, not as professional enterprise experience.

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

This project forms part of my portfolio as I build practical evidence toward **Junior / Entry-Level Reporting Analyst opportunities in Johannesburg, Gauteng and credible remote opportunities across South Africa**.

My current technical focus is PostgreSQL and SQL. I am deliberately building evidence around the reporting capabilities that sit around SQL:

**Business Questions → Data → SQL → Validation → Reporting → Interpretation**

The project is intended to demonstrate potential and practical learning through portfolio work, not claim professional reporting experience.

---

## Portfolio Position

This is the **flagship reporting project** in my SQL portfolio.

It is complemented by:

* **Insurance Claims Risk Analytics SQL Project** — insurance claims, risk and KPI reporting
* **Retail Sales Analytics ETL Data Pipeline Project** — data preparation and transformation for reporting
* **SQL Data Analytics Fundamentals for Business Reporting** — foundational SQL and relational-data skills

Together, these projects show progression from **SQL fundamentals → data preparation → applied industry reporting → business-focused analysis**.

---

## About

I am building practical SQL projects focused on PostgreSQL, business reporting, KPI analysis and data quality as I work toward an entry-level Reporting Analyst career.

My goal is to develop the ability to move beyond writing queries and understand how data can support clear, reliable business reporting.

