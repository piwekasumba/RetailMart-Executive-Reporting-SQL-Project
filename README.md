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

The reporting analysis is designed to answer practical management questions:

| Business Question                             | SQL Analysis                                  | Reporting Purpose                                                    |
|-----------------------------------------------|-----------------------------------------------|----------------------------------------------------------------------|
| Which stores generate the highest revenue?    | Aggregate sales by store                      | Compare store performance and identify stronger-performing locations |
| Which products contribute the most sales?     | Aggregate sales by product                    | Understand product contribution to overall sales                     |
| Which employees generate the highest revenue? | Join employees to sales and aggregate revenue | Compare employee sales performance                                   |
| Which customers spend the most?               | Aggregate customer sales                      | Identify high-value customer activity                                |
| Which provinces perform best?                 | Aggregate revenue by province                 | Compare regional performance                                         |
| What does the returns activity show?          | Analyse returned sales activity               | Monitor potential revenue leakage and return patterns                |
| Are stores achieving their sales targets?     | Compare actual sales with targets             | Identify stores performing above or below target                     |

The purpose is not only to produce a query result, but to turn each result into information that could support management reporting and further investigation.
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

• The analysis uses relational joins, aggregation and KPI calculations to turn transaction-level data into management reporting outputs.

The reporting workflow follows:

- **Business Question → SQL Analysis → Result → Reporting Interpretation**

-- For example, a store-revenue query does more than rank stores by revenue. The resulting comparison can help management identify stronger- and weaker-performing locations and determine where further investigation may be required.

Similarly, product, employee, customer, provincial and target-performance analysis can be used to compare business performance from different reporting perspectives.

The SQL results remain the evidence base; business interpretations should be made from the actual results rather than assumed in advance.
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

The SQL analysis produces reporting evidence across stores, products, employees, customers, provinces, returns and sales targets.

The findings should be interpreted directly from the query results. For example:

- Store revenue results can be used to compare location performance.
- Product results can show which products contribute most to sales.
- Employee results can support performance comparisons.
- Customer results can highlight differences in customer spending.
- Provincial results can show regional differences in revenue.
- Returns results can help identify return activity that may require investigation.
- Target-performance results can show which stores are above or below their sales targets.

These findings demonstrate how SQL results can become reporting information rather than remaining as isolated query outputs.

Specific numerical findings are intentionally not stated here unless they can be verified directly from the project's SQL results.
---
## Business / Reporting Insights

The project demonstrates a reporting workflow where SQL analysis is used to answer business questions and support performance monitoring.

Examples include:

- Comparing revenue across stores to understand location performance
- Identifying products that contribute strongly to sales
- Comparing employee sales performance
- Reviewing customer spending patterns
- Comparing provincial revenue performance
- Monitoring returns activity
- Comparing store sales against targets

The business meaning depends on the actual result.

For example:

**Business question:**  Which stores generate the highest revenue?

**SQL analysis:**  Aggregate sales revenue by store and rank the results.

**Result:**  The query produces a ranked comparison of store revenue.

**Reporting interpretation:**  Management can use the comparison to identify stronger- and weaker-performing locations and determine where additional investigation may be useful.

This approach demonstrates that the purpose of SQL reporting is not simply to produce numbers, but to make business performance easier to understand and monitor.
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


