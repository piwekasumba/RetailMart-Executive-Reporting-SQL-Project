---
# RetailMart Executive Reporting SQL Project
---
## Project Overview

RetailMart is a self-directed SQL portfolio project built with PostgreSQL 18 using simulated South African retail data.

The project demonstrates how relational data can be analysed and organised into management-oriented reports. Its focus is on the practical reporting tasks an entry-level Reporting Analyst may encounter: understanding business questions, calculating KPIs, validating SQL results and explaining what reported figures do and do not represent.

This is a learning and portfolio project. The simulated data does not represent a real company or actual business performance.
---
## Business Reporting Focus

The project explores questions such as:

- What are the recorded sales and average transaction values?
- How do sales differ across stores and provinces?
- Which products and categories contribute most to recorded sales?
- What does customer spending look like in the sample?
- How are returns and recorded refunds represented?
- How do recorded sales compare with store targets?
- Do joins and reporting fields preserve the intended meaning of the data?
---
## SQL and Reporting Work

The project uses PostgreSQL to practise:

- Relational table design and foreign-key relationships
- SELECT, WHERE, ORDER BY and GROUP BY
- Joins and aggregate functions
- Subqueries and reporting queries
- KPI calculations and reporting summaries
- Return and refund analysis
- Store and employee reporting
- Row-count and join-grain validation
- Checking whether reported fields represent the intended business concept
---
## Reporting Definitions and Interpretation

KPI definitions matter as much as their calculations.

For example, transaction-based return rate is calculated using the number of distinct returned sales transactions divided by the number of sales transactions in the defined cohort.

This is different from a return rate measured by units or monetary value.

Recorded sales should also be distinguished from accounting-recognised revenue. Subtracting recorded refunds from recorded sales is a portfolio calculation, not proof of an accounting-compliant revenue figure.

The sample sales cover 1–10 September 2025, while the store targets represent the full month. Any comparison must therefore be described as partial-period sales against full-month targets, not as final monthly target performance.
---
## Data Validation and Limitations

The project includes investigation of differences between the store recorded on a transaction and the store assigned to the employee associated with that transaction.

A difference is an exception for investigation, not automatic proof that a transaction is incorrect. Business rules are needed to determine whether employees may work across branches.

The dataset is simulated and limited in size and reporting period. It does not establish real-world trends, causation or operational performance.
---
## Tools

- PostgreSQL 18
- SQL
- pgAdmin 4
---
## Project Context

This project is independently developed for learning and portfolio demonstration. It is not paid client work, professional employment experience or a production reporting system.
