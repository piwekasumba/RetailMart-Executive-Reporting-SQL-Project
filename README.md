# RetailMart Executive Reporting SQL Project

A PostgreSQL project focused on turning retail transaction data into management-ready reporting through SQL, KPI analysis and business-focused queries.
---
## Business Problem

A retail business needs reliable reporting to understand sales performance across stores, products, employees and customers.

Management needs answers to questions such as:

* Which stores generate the most revenue?
* Which products perform best?
* Which employees generate the highest sales?
* Which customers spend the most?
* How does performance differ by province?
* Are stores meeting their sales targets?
* What does the returns data show?

The challenge is to turn structured transactional data into clear reporting that can be used to understand business performance.
---
## Project Objective

The objective of this project was to build a relational retail database in PostgreSQL and use SQL to produce business-focused reports.

The project focuses on:

* Building related business tables
* Loading realistic retail data
* Joining data across tables
* Calculating KPIs
* Comparing business performance
* Producing reporting outputs for management questions
---
## Tools / Technologies

* PostgreSQL 18
* SQL
* Relational database design
* SQL joins
* Aggregate functions
* GROUP BY
* ORDER BY
* KPI calculations
---
## Dataset

This project uses a simulated retail dataset representing a South African retail business.

The data is organised into related business tables covering areas such as stores, products, employees, customers and sales activity.

The dataset is intended for portfolio and learning purposes rather than representing a real company's data.
---
## Business Questions

The reporting queries explore questions including:

1. Which stores generate the highest revenue?
2. Which products contribute the most sales?
3. Which employees generate the highest revenue?
4. Which customers spend the most?
5. Which provinces perform best?
6. What does the returns activity show?
7. Are stores achieving their sales targets?
8. Which performance trends would be useful for management to monitor?
---
## SQL Analysis

The project uses SQL to combine and summarise the retail data.

The reporting queries include:

* Executive KPI Summary
* Revenue by Store
* Top Selling Products
* Employee Performance
* Customer Spending Analysis
* Revenue by Province
* Returns Analysis
* Store Sales Target Performance

## The analysis uses relational joins and aggregation to turn transaction-level data into reporting outputs.
---

## Business Question → SQL Analysis → Reporting Meaning

The reporting workflow connects each business question to a SQL analysis and then considers what the resulting information means from a reporting perspective.

### 1. Store Revenue Performance

**Business Question:**  

- Which stores generate the highest revenue?

**SQL Analysis:**  

- Sales transactions are aggregated by store and ranked by total revenue.

**Result:**  

- The query produces a store-level revenue ranking that allows management to compare sales performance across locations.

**Reporting Meaning:**  

- The ranking provides a starting point for identifying stronger and weaker-performing stores. Differences in performance may require further investigation into factors such as sales volume, product mix, customer activity or store-level conditions.

**Next Question:**  

- What factors may explain the difference between higher- and lower-performing stores?

---

### 2. Product Performance

**Business Question:**  

- Which products contribute the most sales?

**SQL Analysis:**  
- Sales are aggregated by product and ranked according to sales performance.

**Result:**  

- The query identifies the products contributing the highest sales within the dataset.

**Reporting Meaning:**  

- Product-level reporting can help management understand which products are contributing most to sales and where product performance may warrant further investigation.

**Next Question:**  

- Are the strongest-selling products also generating strong performance across different stores or provinces?

---

### 3. Employee Performance

**Business Question:**  

- Which employees generate the highest sales?

**SQL Analysis:**  

- Sales transactions are linked to employees and aggregated to produce employee-level sales performance.

**Result:**  

- The query provides a ranked view of employee sales contribution.

**Reporting Meaning:**  

- Employee-level reporting can help management monitor sales contribution and identify performance differences that may require further investigation.

**Next Question:**  

- Are performance differences consistent across stores, or are they influenced by store location and customer activity?

---

### 4. Store Target Performance

**Business Question:**  

- Are stores achieving their sales targets?

**SQL Analysis:**  

- Actual store sales are compared with the corresponding sales targets.

**Result:**  

- The query provides a view of store performance relative to target.

**Reporting Meaning:**  

- Comparing actual performance with targets gives management a more useful performance measure than reviewing revenue alone. It helps identify stores that are performing above or below their expected level.

**Next Question:**  

- Which stores have the largest gaps between actual sales and target, and what factors may explain those gaps?
---
## Key Findings

The project is designed to identify differences in sales performance across stores, products, employees, customers and provinces.

Rather than treating a query result as the final answer, the reporting outputs provide a basis for asking what is driving the performance and where management may need to investigate further.

Specific findings should be taken from the SQL query results rather than estimated in the README.
---
## Business / Reporting Insights

The project demonstrates how SQL reporting can help a business:

* Monitor revenue and sales performance
* Compare stores and products
* Review employee and customer performance
* Track returns
* Compare performance against targets
* Identify areas that may require further investigation

The main reporting lesson is that a useful SQL report should connect a business question to a clear, reproducible result.
---
## Data Quality Considerations

Reliable reporting depends on the underlying data being structured consistently.

This project therefore considers:

* Relationships between business tables
* Primary and foreign-key relationships
* Consistent values used for reporting
* Correct joins between related records
* Accurate aggregation of transactional data
* Validation of calculated reporting measures

Because the dataset is simulated, the project should be viewed as a demonstration of SQL reporting workflow rather than production reporting.
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
3. Run `SQL/01_create_tables.sql` to create the database tables.
4. Run `SQL/02_insert_data.sql` to load the project data.
5. Run `SQL/03_reporting_queries.sql` to execute the reporting queries.
6. Review the query results and compare them with the business questions.
---
## What This Project Demonstrates

This project demonstrates my ability to:

* Work with PostgreSQL
* Design and work with relational tables
* Use SQL joins and aggregations
* Calculate reporting KPIs
* Translate business questions into SQL queries
* Produce structured reporting outputs
* Think about data quality when preparing business reports

The project is part of my portfolio as I build practical evidence for an entry-level Reporting Analyst role.
---
## About

I am building practical SQL projects focused on business reporting, KPI analysis and data analysis.

My current focus is developing stronger PostgreSQL skills and learning how to turn business data into clear reporting information.


