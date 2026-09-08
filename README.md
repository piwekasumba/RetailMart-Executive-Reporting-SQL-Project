# RetailMart Executive Reporting SQL Project

A PostgreSQL portfolio project focused on **retail business reporting, KPI analysis, data quality, validation and management-focused SQL analysis** using simulated South African retail data.

The project demonstrates how I approach a reporting problem from:

**Business Question → Data → SQL Logic → KPI → Validation → Reporting Output → Business Interpretation**

> **Portfolio focus:** Junior Reporting Analyst | SQL | PostgreSQL | KPI Reporting | Data Quality | Business Reporting | Retail Analytics

---

## Why This Project Exists

Retail businesses generate transactional data across stores, products, employees, customers, returns and sales targets.

For reporting purposes, calculating a number is only part of the problem.

A reporting analyst also needs to consider:

* What business question is being answered?
* How is the KPI defined?
* Which records should be included?
* Are joins producing the intended result?
* Are returns or other exclusions handled consistently?
* Can the result be validated?
* What does the result mean for the business?

This project uses PostgreSQL to practise that reporting workflow using a simulated retail dataset.

---

## Business Context

The project represents a simulated South African retail environment.

The analysis focuses on reporting questions relevant to retail and FMCG operations, including:

* Store performance
* Product performance
* Employee sales performance
* Customer activity
* Provincial performance
* Returns
* Sales targets
* Executive KPI reporting

The purpose is not to reproduce the performance of a real company.

The purpose is to demonstrate how SQL can turn transactional retail data into structured reporting information.

---

## Project Objective

The objective is to build a relational retail database in PostgreSQL and use SQL to answer practical management-reporting questions.

The project focuses on:

* Relational database structures
* SQL joins
* Filtering
* Aggregation
* KPI calculations
* Business reporting
* Data-quality awareness
* Validation of reporting measures
* Comparing performance across business dimensions

---

## Reporting Workflow

The project follows this reporting workflow:

```text
Business Question
       ↓
Data Required
       ↓
KPI / Measure Definition
       ↓
SQL Logic
       ↓
Validation
       ↓
Reporting Output
       ↓
Business Interpretation
       ↓
Next Question
```

This is intentional.

The SQL query is treated as part of the reporting process rather than automatically being treated as the final answer.

---

## Tools & Technologies

* PostgreSQL 18
* SQL
* Relational databases
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

The project uses simulated retail data representing a South African retail business.

The dataset contains business entities including:

* Stores
* Products
* Employees
* Customers
* Sales transactions
* Returns
* Sales targets

The data is used for portfolio and learning purposes.

It does not represent real customer information or the operational data of a real company.

---

## Business Questions

| Business Question                           | SQL Analysis                      | Reporting Purpose                        |
| ------------------------------------------- | --------------------------------- | ---------------------------------------- |
| Which stores generate the highest revenue?  | Aggregate sales by store          | Compare store performance                |
| Which products contribute most to sales?    | Aggregate sales by product        | Understand product contribution          |
| Which employees generate the highest sales? | Join employees to transactions    | Compare sales performance                |
| Which customers spend the most?             | Aggregate customer transactions   | Understand customer activity             |
| Which provinces perform best?               | Aggregate revenue by province     | Compare regional performance             |
| What does returns activity show?            | Analyse return transactions       | Identify areas for investigation         |
| Are stores meeting sales targets?           | Compare actual sales with targets | Measure performance against expectations |

---

## KPI Thinking

A KPI is only useful when its definition is clear.

For example, a revenue measure may require decisions about:

* Which transactions count?
* Which reporting period is used?
* How are returns handled?
* Are cancelled transactions included?
* Which date field determines the reporting period?
* Are duplicate transactions present?
* What level should the KPI be reported at?

These decisions can affect the meaning of the resulting number.

The project therefore treats KPI definition and validation as part of the reporting workflow.

---

## SQL Analysis

The reporting queries cover:

* Executive KPI summary
* Revenue by store
* Top-selling products
* Employee sales performance
* Customer spending
* Revenue by province
* Returns analysis
* Store sales-target performance

The SQL uses relational joins, filtering, aggregation and KPI calculations to convert transaction-level information into reporting outputs.

---

## Reporting Investigation

One important reporting scenario is when two apparently valid reports produce different results.

Instead of immediately deciding that one query is wrong, the analyst should investigate the difference.

Possible investigation areas include:

* Reporting date range
* KPI definition
* Date fields
* Returns and cancellations
* Source records
* Join conditions
* Duplicate records
* Unexpected transactions
* Filtering assumptions
* Aggregation logic

The objective is to understand:

**Where did the difference come from?**

and:

**Which result correctly answers the reporting question?**

This is an important part of reliable reporting.

---

## Data Quality & Validation

The project considers:

* Primary and foreign-key relationships
* Correct joins
* Duplicate or unexpected records
* Consistent values
* Appropriate filtering
* Accurate aggregation
* Date handling
* Return handling
* KPI definitions
* Validation of calculated measures

The project does not claim production-level data governance or enterprise controls.

It demonstrates awareness of the checks that can affect reporting reliability.

---

## Example Reporting Question

### Are stores meeting their sales targets?

**Business question**

Which stores are performing above or below their expected sales target?

**SQL approach**

Actual sales are aggregated at store level and compared with the corresponding target information.

**Reporting output**

The resulting comparison provides a structured view of performance relative to target.

**Business meaning**

A target comparison can provide more context than revenue alone because performance is considered against an expected benchmark.

**Next questions**

* Which stores have the largest target gaps?
* Are the differences persistent?
* Could product mix or customer activity explain the difference?
* Are the underlying sales and target records complete?

---

## What the Project Demonstrates

This project provides evidence of my ability to:

* Work with PostgreSQL
* Write SQL for business questions
* Join relational tables
* Aggregate transactional data
* Calculate reporting measures
* Think about KPI definitions
* Consider data quality
* Validate reporting logic
* Compare business performance
* Communicate reporting observations without overstating what simulated data proves

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
3. Run:

```text
SQL/01_create_tables.sql
```

4. Load the project data using:

```text
SQL/02_insert_data.sql
```

5. Run the reporting analysis using:

```text
SQL/03_reporting_queries.sql
```

6. Review the results against the business questions and KPI definitions.

---

## How to Review This Project

For a recruiter, hiring manager or analyst reviewing the repository, the recommended sequence is:

1. Read this README.
2. Review the database creation script.
3. Review the inserted data.
4. Review the reporting queries.
5. Consider how the SQL connects to the business questions.
6. Review the validation and data-quality considerations.

The strongest evidence is the connection between:

**Business Question → SQL → KPI → Validation → Reporting Meaning**

---

## Portfolio Position

This is the **flagship management-reporting project** in my SQL portfolio.

It represents the retail/FMCG side of my industry rotation and demonstrates how SQL can be applied to:

* Sales reporting
* KPI reporting
* Store performance
* Product performance
* Returns
* Target analysis
* Management reporting

It complements the insurance, ETL and SQL-foundation projects in this portfolio.

---

## Career Relevance

This project forms part of my portfolio as I build practical evidence toward:

* Junior Reporting Analyst
* Reporting Analyst
* Junior Data Analyst
* Data Analyst
* SQL-focused analyst opportunities

My primary target is **Johannesburg/Gauteng**, with credible remote opportunities across South Africa as a secondary target.

The project is portfolio evidence of skills I am developing; it does not represent professional employment experience.

---

## Limitations

This is a simulated portfolio project.

It does not represent:

* Production reporting
* Enterprise data governance
* Professional employment experience
* Production data pipelines
* Enterprise BI platforms
* Real company performance
* Real customer information

The numerical results should therefore be interpreted within the context of the simulated dataset.

---

## About

I am building practical PostgreSQL and SQL projects focused on business reporting, KPI analysis, data quality and analytical thinking.

My current focus is developing strong SQL skills and learning how to connect technical analysis with practical reporting questions as I work toward an entry-level Reporting Analyst career.

---

