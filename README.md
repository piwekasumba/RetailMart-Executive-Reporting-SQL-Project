# RetailMart Executive Reporting SQL Project

A PostgreSQL reporting project that turns simulated retail transaction data into management-focused KPIs, performance analysis and business reporting outputs.

The project is designed around a practical Reporting Analyst workflow:

**Business Question → KPI Definition → SQL Analysis → Validation → Reporting Output → Business Interpretation**

---

## Why This Project Exists

Retail businesses generate large volumes of transactional information, but raw transactions do not automatically answer management questions.

A reporting analyst may need to determine:

* Which stores are performing strongly?
* Which products contribute most to sales?
* Are stores meeting their targets?
* How does performance differ across locations?
* What does returns activity show?
* Which customers or employees contribute most to sales?
* Do the numbers remain consistent when the data is analysed from different reporting perspectives?

This project uses PostgreSQL and SQL to explore those questions using a simulated South African retail dataset.

The goal is not to present a production reporting system. The goal is to demonstrate how transactional data can be transformed into structured reporting information.

---

## Project Objective

The objective is to build a relational retail database in PostgreSQL and use SQL to produce business-focused reporting outputs.

The project focuses on:

* Relational database structures
* SQL joins
* Aggregation
* KPI calculations
* Store performance
* Product performance
* Employee performance
* Customer spending
* Provincial performance
* Returns analysis
* Sales-target comparison
* Data-quality considerations
* Reporting interpretation

---

## Business Reporting Context

This project represents the **retail/FMCG** side of my portfolio.

Retail reporting can involve measures such as:

* Revenue
* Sales volume
* Store performance
* Product contribution
* Customer value
* Returns
* Target achievement
* Regional performance

The project therefore provides practical evidence of applying SQL to a business domain rather than treating SQL as syntax-only exercises.

---

## Tools & Technologies

* PostgreSQL 18
* SQL
* Relational database concepts
* SQL joins
* Aggregate functions
* `GROUP BY`
* `ORDER BY`
* Filtering
* KPI calculations
* Data validation concepts

---

## Dataset

The project uses a simulated retail dataset representing a South African retail business.

The data is organised into related business tables covering areas such as:

* Stores
* Products
* Employees
* Customers
* Sales transactions
* Sales targets
* Returns/activity related to sales

The dataset is intended for learning and portfolio purposes.

It does not represent a real company's operational data or real customers.

---

## Core Business Questions

| Business Question                           | SQL Analysis                                      | Reporting Purpose                              |
| ------------------------------------------- | ------------------------------------------------- | ---------------------------------------------- |
| Which stores generate the highest revenue?  | Aggregate sales by store                          | Compare store performance                      |
| Which products contribute the most sales?   | Aggregate sales by product                        | Understand product contribution                |
| Which employees generate the highest sales? | Join employees to sales and aggregate performance | Compare employee sales contribution            |
| Which customers spend the most?             | Aggregate customer sales                          | Examine customer value                         |
| Which provinces perform best?               | Aggregate revenue by province                     | Compare regional performance                   |
| What does returns activity show?            | Analyse return-related activity                   | Identify areas requiring further investigation |
| Are stores achieving their sales targets?   | Compare actual sales with targets                 | Measure performance against expectations       |

---

## Reporting Workflow

The project follows a reporting-oriented workflow:

```text
Business Question
        ↓
Define the Measure
        ↓
Identify Required Data
        ↓
Join Related Tables
        ↓
Calculate KPI / Measure
        ↓
Validate the Result
        ↓
Produce Reporting Output
        ↓
Interpret the Result
```

This distinction is important because a technically valid SQL query can still produce a misleading reporting result if the underlying definition, join or data treatment is incorrect.

---

## KPI Definition & Reporting Logic

A reporting measure needs a clear definition before it is calculated.

For example, a revenue KPI requires consideration of questions such as:

* Which transactions are included?
* Which date field defines the reporting period?
* How are returns treated?
* Are cancelled transactions included or excluded?
* Which tables provide the required information?
* Could joins duplicate transactions?
* Are the source values consistent?

The project therefore treats KPI calculation as more than writing an aggregate query.

**Business definition → Data treatment → SQL calculation → Validation**

---

## SQL Analysis

The reporting queries include:

### Executive KPI Summary

Provides a high-level view of the available retail performance measures.

### Revenue by Store

Aggregates sales at store level to compare location performance.

### Top-Selling Products

Ranks products according to sales contribution.

### Employee Performance

Connects employee information with sales activity to compare sales contribution.

### Customer Spending Analysis

Aggregates customer-level sales activity to examine differences in customer spending.

### Revenue by Province

Groups sales by province to provide a regional performance view.

### Returns Analysis

Examines return-related activity and provides additional context when interpreting sales performance.

### Store Sales Target Performance

Compares actual sales with available store targets.

---

## Business Question → SQL Analysis → Reporting Meaning

### 1. Store Revenue Performance

**Business question**

Which stores generate the highest revenue?

**SQL approach**

Sales transactions are aggregated by store and ranked using the relevant revenue measure.

**Reporting output**

A comparable store-level view of sales performance.

**Potential reporting meaning**

The output can identify stronger and weaker-performing locations and provide a starting point for further investigation.

**Next questions**

* Is the difference driven by transaction volume?
* Does product mix differ?
* Is customer activity different?
* Are returns affecting the comparison?
* Are stores being compared over the same reporting period?

---

### 2. Product Performance

**Business question**

Which products contribute the most sales?

**SQL approach**

Sales activity is aggregated by product and ranked according to the selected measure.

**Reporting output**

A product-level performance comparison.

**Potential reporting meaning**

The output can help identify products that contribute strongly to sales and areas that may require further investigation.

**Next questions**

* Do leading products perform consistently across stores?
* Does product performance differ by province?
* Are returns concentrated around particular products?

---

### 3. Employee Performance

**Business question**

Which employees contribute the most sales?

**SQL approach**

Employee records are joined with sales activity and aggregated to produce an employee-level view.

**Reporting output**

A comparable view of employee sales contribution.

**Potential reporting meaning**

The analysis can support performance monitoring while recognising that differences may also reflect store location, customer activity, product mix or transaction volume.

---

### 4. Store Target Performance

**Business question**

Are stores achieving their sales targets?

**SQL approach**

Actual sales are compared with the corresponding target information.

**Reporting output**

A store-level comparison between actual performance and expected performance.

**Potential reporting meaning**

Target comparison can provide more context than reviewing revenue alone because performance is considered relative to an expected level.

---

### 5. Returns Activity

**Business question**

What does returns activity show?

**SQL approach**

Return-related information is analysed alongside the relevant retail activity.

**Reporting output**

A structured view of return activity.

**Potential reporting meaning**

Returns can provide important context when interpreting sales performance and may identify areas requiring additional investigation.

---

## Data Quality & Validation

Reliable reporting depends on the quality and structure of the underlying data.

This project considers:

* Primary and foreign-key relationships
* Correct table relationships
* Appropriate SQL joins
* Consistent reporting values
* Duplicate or unexpected records
* Accurate aggregation
* KPI definitions
* Date-period consistency
* Validation of calculated measures
* Treatment of returns and exclusions

A particular reporting risk is producing a technically correct query that answers the wrong business question.

For that reason, validation is treated as part of the reporting process rather than as an optional final step.

---

## Reconciliation Mindset

When two apparently valid reporting queries produce different results, the correct response is not automatically to assume that one query is wrong.

A reporting investigation should consider:

* Date ranges
* KPI definitions
* Included/excluded transactions
* Returns and cancellations
* Source tables
* Join conditions
* Duplicate records
* Date fields
* Aggregation logic
* Data-quality issues
* Assumptions

The objective is to understand **why the numbers differ before deciding which result should be used**.

---

## Key Reporting Skills Demonstrated

This project provides evidence of:

* PostgreSQL
* SQL querying
* Relational data analysis
* SQL joins
* Aggregation
* KPI calculation
* Business-question translation
* Data-quality awareness
* Reporting validation
* Performance comparison
* Business-focused interpretation

---

## Portfolio Role Alignment

This project is the flagship reporting project in my SQL portfolio.

It demonstrates the type of work I am using to build practical evidence toward **Junior Reporting Analyst, Reporting Analyst and entry-level Data Analyst opportunities**, with a focus on Johannesburg/Gauteng and credible remote opportunities across South Africa.

The project does not claim professional enterprise reporting experience. It demonstrates portfolio-based practical work using PostgreSQL and simulated data.

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

5. Run the reporting queries:

```text
SQL/03_reporting_queries.sql
```

6. Review the outputs against the business questions documented in this README.

---

## How to Review This Project

A reviewer can start with:

1. `README.md` — business context and reporting workflow
2. `SQL/01_create_tables.sql` — database structure
3. `SQL/02_insert_data.sql` — simulated data
4. `SQL/03_reporting_queries.sql` — reporting analysis

The most important question when reviewing the project is not simply:

> Can the SQL return a result?

It is:

> Does the SQL answer the defined reporting question using appropriate data and logic?

---

## Limitations

This is a simulated portfolio project.

It does not represent:

* A real company's reporting environment
* Production data
* Real customer information
* Production ETL infrastructure
* Enterprise BI tooling
* Professional employment experience

The project is intended to demonstrate practical SQL and reporting thinking.

---

## What I Am Building Through This Project

I am using this project to strengthen my ability to connect:

**Business Questions → Data → SQL → Validation → Reporting → Business Meaning**

That is the reporting workflow I want my portfolio to demonstrate.

---

## About

I am building practical PostgreSQL and SQL projects focused on business reporting, KPI analysis, data quality and business-focused data analysis.

My current portfolio focus is developing credible practical evidence for entry-level Reporting Analyst and Data Analyst opportunities.



