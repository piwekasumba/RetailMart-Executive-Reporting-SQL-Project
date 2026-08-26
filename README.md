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

 The analysis uses relational joins, aggregation and KPI calculations to turn transaction-level data into management reporting outputs.

The reporting workflow follows:

- **Business Question → SQL Analysis → Result → Reporting Interpretation**

For example, a store-revenue query does more than rank stores by revenue. The resulting comparison can help management identify stronger- and weaker-performing locations and determine where further investigation may be required.

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

The purpose of the reporting analysis is not only to produce SQL query results, but to connect each result to a business question and explain what the result means for reporting.

The reporting workflow can be viewed as:

**Business Question → SQL Analysis → Result → Reporting Interpretation**

### Example 1: Store Revenue Performance

**Business question:** Which stores generate the highest revenue?

**SQL analysis:**  

Sales transactions are joined with store information and aggregated to calculate revenue by store.

**Result:**  

The query produces a ranked view of store revenue, allowing stores to be compared using the same reporting measure.

**Reporting interpretation:**  

The result can help management identify stronger and weaker store performance and determine where further investigation may be useful.

### Example 2: Product Performance

**Business question:** Which products contribute the most sales?

**SQL analysis:**  

Product and sales information are combined and aggregated to calculate sales performance by product.

**Result:**  

The query produces a ranked product-level reporting output.

**Reporting interpretation:**  

The comparison can help identify products contributing strongly to sales and products that may require further review.

### Example 3: Employee Performance

**Business question:** Which employees generate the highest sales?

**SQL analysis:**  

Employee and sales records are joined and aggregated to calculate sales performance by employee.

**Result:**  

The report provides a comparable view of employee sales contribution.

**Reporting interpretation:**  

The output can support performance monitoring and help identify differences that management may want to investigate.

### Example 4: Store Target Performance

**Business question:** Are stores achieving their sales targets?

**SQL analysis:**  

Store sales are compared with the available sales-target information.

**Result:**  

The reporting output shows store performance relative to the defined target.

**Reporting interpretation:**  

This provides management with a more useful performance view than revenue alone because actual performance can be considered in relation to an expected target.

### Example 5: Returns Activity

**Business question:** What does the returns data show?

**SQL analysis:**  

Returns information is aggregated and analysed alongside the relevant retail activity.

**Result:**  

The analysis provides a structured view of return activity.

**Reporting interpretation:**  

The result can help identify areas where return activity may require additional investigation and can provide context when reviewing sales performance.

## Reporting Value

The key value of the project is the connection between the SQL result and the business question.

A query result is not treated as the final answer. The reporting process asks:

1. What business question are we answering?
2. What data is required?
3. What SQL logic produces the result?
4. What does the result show?
5. What could the result mean for management or further analysis?

Specific numerical findings should be taken directly from the SQL query results rather than estimated in the README.
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


