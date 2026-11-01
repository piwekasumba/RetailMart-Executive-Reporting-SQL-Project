
-- ==========================================================
-- RETAILMART EXECUTIVE REPORTING SQL PROJECT
-- File: 03_reporting_queries.sql
-- Database: PostgreSQL
--
-- PROJECT PURPOSE
-- Produce business-focused reporting outputs from the
-- RetailMart simulated relational database.
--
-- REPORTING AREAS
-- 1. Executive sales KPIs
-- 2. Store and provincial performance
-- 3. Product and category performance
-- 4. Customer activity
-- 5. Employee sales performance
-- 6. Daily and monthly sales reporting
-- 7. Returns and refunds
-- 8. Store sales target comparisons
-- 9. Transaction-level reporting
-- 10. Net sales and transaction-based return rate
--
-- REPORTING SCOPE AND ASSUMPTIONS
-- - Sales and reporting results are based on the records
--   currently available in the simulated database.
-- - The September 2025 sales sample covers 1-10 September.
-- - September recorded sales must not be presented as
--   complete full-month sales performance.
-- - Target comparisons distinguish recorded sales against
--   the full-month target from confirmed monthly achievement.
-- - A difference between an employee's assigned store and
--   a transaction's store is a validation flag for review,
--   not automatic evidence of an incorrect transaction.
--
-- KPI DEFINITIONS
-- Gross sales:
-- Sum of recorded sales transaction amounts.
--
-- Net sales after recorded refunds:
-- Gross sales less recorded refund amounts.
--
-- Transaction-based return rate:
-- Distinct returned sales transactions divided by total
-- sales transactions, multiplied by 100.
--
-- Target comparison:
-- Recorded sales for the target month divided by the
-- full-month sales target, multiplied by 100.
--
-- ==========================================================


-- ==========================================================
-- 1. EXECUTIVE SALES SUMMARY
--
-- Business Question:
-- What is the overall recorded sales performance?
--
-- Reporting Purpose:
-- Provides a high-level sales KPI summary for management.
--
-- Measures:
-- Transaction count, gross sales, average transaction value,
-- highest transaction value and lowest transaction value.
-- ==========================================================

SELECT
    COUNT(*) AS total_transactions,
    SUM(total_amount) AS gross_sales,
    ROUND(AVG(total_amount), 2) AS average_transaction_value,
    MAX(total_amount) AS highest_transaction_value,
    MIN(total_amount) AS lowest_transaction_value
FROM sales;


-- ==========================================================
-- 2. REVENUE BY STORE
--
-- Business Question:
-- Which stores generated the highest recorded sales revenue?
--
-- Reporting Purpose:
-- Supports store-level performance monitoring.
-- ==========================================================

SELECT
    st.store_name,
    st.city,
    st.province,
    COUNT(s.sale_id) AS total_transactions,
    SUM(s.total_amount) AS gross_sales,
    ROUND(AVG(s.total_amount), 2) AS average_transaction_value
FROM sales AS s
INNER JOIN stores AS st
    ON s.store_id = st.store_id
GROUP BY
    st.store_id,
    st.store_name,
    st.city,
    st.province
ORDER BY gross_sales DESC;


-- ==========================================================
-- 3. REVENUE BY PROVINCE
--
-- Business Question:
-- Which provinces generated the highest recorded revenue?
--
-- Reporting Purpose:
-- Supports geographic performance reporting.
-- ==========================================================

SELECT
    st.province,
    COUNT(s.sale_id) AS total_transactions,
    SUM(s.total_amount) AS gross_sales,
    ROUND(AVG(s.total_amount), 2) AS average_transaction_value
FROM sales AS s
INNER JOIN stores AS st
    ON s.store_id = st.store_id
GROUP BY st.province
ORDER BY gross_sales DESC;


-- ==========================================================
-- 4. PRODUCT PERFORMANCE
--
-- Business Question:
-- Which products generated the highest sales revenue?
--
-- Reporting Purpose:
-- Supports product-level performance and sales reporting.
-- ==========================================================

SELECT
    p.product_name,
    p.category,
    p.brand,
    SUM(s.quantity) AS units_sold,
    SUM(s.total_amount) AS gross_sales,
    ROUND(AVG(s.total_amount), 2) AS average_transaction_value
FROM sales AS s
INNER JOIN products AS p
    ON s.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category,
    p.brand
ORDER BY gross_sales DESC;


-- ==========================================================
-- 5. REVENUE BY PRODUCT CATEGORY
--
-- Business Question:
-- Which product categories contribute the most revenue?
--
-- Reporting Purpose:
-- Supports category-level performance reporting.
-- ==========================================================

SELECT
    p.category,
    SUM(s.quantity) AS units_sold,
    SUM(s.total_amount) AS gross_sales,
    ROUND(AVG(s.total_amount), 2) AS average_transaction_value
FROM sales AS s
INNER JOIN products AS p
    ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY gross_sales DESC;


-- ==========================================================
-- 6. TOP CUSTOMERS BY SPEND
--
-- Business Question:
-- Which customers generated the highest recorded sales value?
--
-- Reporting Purpose:
-- Supports customer activity and revenue reporting.
-- ==========================================================

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city,
    c.province,
    COUNT(s.sale_id) AS total_transactions,
    SUM(s.total_amount) AS total_spent,
    ROUND(AVG(s.total_amount), 2) AS average_transaction_value
FROM customers AS c
INNER JOIN sales AS s
    ON c.customer_id = s.customer_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city,
    c.province
ORDER BY total_spent DESC
LIMIT 10;


-- ==========================================================
-- 7. EMPLOYEE SALES PERFORMANCE AND STORE VALIDATION
--
-- Business Question:
-- Which employees generated the highest recorded sales
-- revenue, and do their transaction stores match their
-- assigned stores?
--
-- Reporting Purpose:
-- Supports employee performance reporting and provides
-- visibility into employee/store relationship differences.
--
-- Validation:
-- transaction_store = store recorded on the sales record.
-- assigned_store = store associated with the employee record.
--
-- A difference requires investigation. It is not
-- automatically proof of an incorrect transaction.
-- ==========================================================

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,

    assigned_store.store_name AS employee_assigned_store,
    transaction_store.store_name AS transaction_store,

    COUNT(s.sale_id) AS total_transactions,

    SUM(s.total_amount) AS gross_sales,

    ROUND(
        AVG(s.total_amount),
        2
    ) AS average_transaction_value,

    COUNT(*) FILTER (
        WHERE e.store_id IS DISTINCT FROM s.store_id
    ) AS transactions_with_store_difference

FROM employees AS e

INNER JOIN sales AS s
    ON e.employee_id = s.employee_id

INNER JOIN stores AS transaction_store
    ON s.store_id = transaction_store.store_id

LEFT JOIN stores AS assigned_store
    ON e.store_id = assigned_store.store_id

GROUP BY
    e.employee_id,
    e.first_name,
    e.last_name,
    e.store_id,
    assigned_store.store_name,
    transaction_store.store_id,
    transaction_store.store_name

ORDER BY gross_sales DESC;


-- ==========================================================
-- 8. DAILY SALES REPORT
--
-- Business Question:
-- How does recorded sales activity change from day to day?
--
-- Reporting Purpose:
-- Supports daily operational monitoring.
-- ==========================================================

SELECT
    sale_date,
    COUNT(*) AS total_transactions,
    SUM(total_amount) AS gross_sales,
    ROUND(AVG(total_amount), 2) AS average_transaction_value
FROM sales
GROUP BY sale_date
ORDER BY sale_date;


-- ==========================================================
-- 9. MONTHLY SALES REPORT
--
-- Business Question:
-- How does recorded sales performance vary across months?
--
-- Reporting Purpose:
-- Supports monthly reporting and retains calendar months
-- with no sales records.
--
-- Important:
-- A month without sales is reported with zero transactions
-- and zero gross sales.
-- Average transaction value remains NULL when there are
-- no transactions, because an average cannot be calculated.
--
-- The report covers the 2025 calendar year.
-- ==========================================================

WITH reporting_months AS (
    SELECT DISTINCT
        DATE_TRUNC('month', calendar_date)::DATE AS sales_month
    FROM calendar
    WHERE calendar_date >= DATE '2025-01-01'
      AND calendar_date < DATE '2026-01-01'
)

SELECT
    rm.sales_month,

    COUNT(s.sale_id) AS total_transactions,

    COALESCE(
        SUM(s.total_amount),
        0
    ) AS gross_sales,

    CASE
        WHEN COUNT(s.sale_id) = 0 THEN NULL
        ELSE ROUND(AVG(s.total_amount), 2)
    END AS average_transaction_value

FROM reporting_months AS rm

LEFT JOIN sales AS s
    ON s.sale_date >= rm.sales_month
   AND s.sale_date < rm.sales_month + INTERVAL '1 month'

GROUP BY rm.sales_month
ORDER BY rm.sales_month;


-- VALIDATION CHECK: 2025 CALENDAR COVERAGE
--
-- Expected:
-- 12 distinct calendar months, with coverage from
-- 1 January 2025 through 31 December 2025.
--
-- Check the actual returned dates and month count before
-- relying on the monthly report for a complete year.

SELECT
    COUNT(
        DISTINCT DATE_TRUNC('month', calendar_date)
    ) AS months_available,

    MIN(calendar_date) AS first_calendar_date,

    MAX(calendar_date) AS last_calendar_date

FROM calendar

WHERE calendar_date >= DATE '2025-01-01'
  AND calendar_date < DATE '2026-01-01';


-- ==========================================================
-- 10. AVERAGE TRANSACTION VALUE BY STORE
--
-- Business Question:
-- Which stores have the highest average transaction value?
--
-- Reporting Purpose:
-- Supports store-level transaction performance analysis.
-- ==========================================================

SELECT
    st.store_name,

    COUNT(s.sale_id) AS total_transactions,

    SUM(s.total_amount) AS gross_sales,

    ROUND(
        AVG(s.total_amount),
        2
    ) AS average_transaction_value

FROM sales AS s

INNER JOIN stores AS st
    ON s.store_id = st.store_id

GROUP BY
    st.store_id,
    st.store_name

ORDER BY average_transaction_value DESC;


-- ==========================================================
-- 11. RETURNS SUMMARY
--
-- Business Question:
-- What is the overall recorded level of returns and refunds?
--
-- Reporting Purpose:
-- Supports operational returns and refund monitoring.
--
-- Measures:
-- Number of return records, total refund value and
-- average refund value per return record.
-- ==========================================================

SELECT
    COUNT(*) AS total_return_records,

    COALESCE(
        SUM(refund_amount),
        0
    ) AS total_refund_value,

    ROUND(
        AVG(refund_amount),
        2
    ) AS average_refund_value

FROM returns;


-- ==========================================================
-- 12. RETURN PERFORMANCE BY PRODUCT
--
-- Business Question:
-- Which products generated the highest recorded refund value?
--
-- Reporting Purpose:
-- Supports product-level returns and refund monitoring.
--
-- Measurement:
-- Return records and distinct returned sales transactions
-- are reported separately.
-- ==========================================================

SELECT
    p.product_name,
    p.category,

    COUNT(r.return_id) AS total_return_records,

    COUNT(
        DISTINCT r.sale_id
    ) AS distinct_returned_transactions,

    SUM(r.refund_amount) AS total_refund_value,

    ROUND(
        AVG(r.refund_amount),
        2
    ) AS average_refund_value_per_return_record

FROM returns AS r

INNER JOIN sales AS s
    ON r.sale_id = s.sale_id

INNER JOIN products AS p
    ON s.product_id = p.product_id

GROUP BY
    p.product_id,
    p.product_name,
    p.category

ORDER BY total_refund_value DESC;


-- ==========================================================
-- 13. STORE SALES TARGET COMPARISON
--
-- Business Question:
-- How do recorded store sales compare with monthly sales
-- targets?
--
-- Reporting Purpose:
-- Supports management target monitoring.
--
-- Important Reporting Distinction:
-- The numerator represents recorded sales for the target
-- month. The denominator is the full-month sales target.
--
-- Where only part of a month is represented in the database,
-- the percentage must NOT be described as confirmed
-- full-month target achievement.
--
-- Current September 2025 sample:
-- Recorded sales cover 1-10 September.
-- ==========================================================

SELECT
    st.store_name,

    t.target_month,

    t.sales_target AS full_month_sales_target,

    COUNT(s.sale_id) AS recorded_transactions,

    MIN(s.sale_date) AS first_recorded_sales_date,

    MAX(s.sale_date) AS last_recorded_sales_date,

    COALESCE(
        SUM(s.total_amount),
        0
    ) AS recorded_sales_for_target_month,

    COALESCE(
        SUM(s.total_amount),
        0
    ) - t.sales_target
        AS recorded_sales_minus_full_month_target,

    ROUND(
        100.0 * COALESCE(SUM(s.total_amount), 0)
        / NULLIF(t.sales_target, 0),
        2
    ) AS recorded_sales_as_percent_of_full_month_target

FROM targets AS t

INNER JOIN stores AS st
    ON t.store_id = st.store_id

LEFT JOIN sales AS s
    ON s.store_id = t.store_id

    AND s.sale_date >= DATE_TRUNC(
        'month',
        t.target_month
    )::DATE

    AND s.sale_date < (
        DATE_TRUNC(
            'month',
            t.target_month
        ) + INTERVAL '1 month'
    )::DATE

GROUP BY
    st.store_id,
    st.store_name,
    t.target_month,
    t.sales_target

ORDER BY
    recorded_sales_as_percent_of_full_month_target DESC;


-- ==========================================================
-- 14. TOP 5 SALES TRANSACTIONS
--
-- Business Question:
-- Which individual transactions generated the highest
-- recorded sales amounts?
--
-- Reporting Purpose:
-- Provides a transaction-level performance view.
-- ==========================================================

SELECT
    sale_id,
    sale_date,
    store_id,
    customer_id,
    product_id,
    quantity,
    total_amount

FROM sales

ORDER BY total_amount DESC
LIMIT 5;


-- ==========================================================
-- 15. EXECUTIVE KPI SUMMARY
--
-- Business Question:
-- What are the key recorded operational and sales metrics
-- across the business?
--
-- Reporting Purpose:
-- Provides a consolidated KPI view for executive reporting.
--
-- Measures:
-- Sales, customers, products, stores, employees, returns
-- and refund value.
-- ==========================================================

SELECT

    (SELECT COUNT(*) FROM sales)
        AS total_transactions,

    (SELECT COALESCE(SUM(total_amount), 0) FROM sales)
        AS gross_sales,

    (SELECT ROUND(AVG(total_amount), 2) FROM sales)
        AS average_transaction_value,

    (SELECT COUNT(*) FROM customers)
        AS total_customers,

    (SELECT COUNT(*) FROM products)
        AS total_products,

    (SELECT COUNT(*) FROM stores)
        AS total_stores,

    (SELECT COUNT(*) FROM employees)
        AS total_employees,

    (SELECT COUNT(*) FROM returns)
        AS total_return_records,

    (SELECT COALESCE(SUM(refund_amount), 0) FROM returns)
        AS total_refund_value;


-- ==========================================================
-- 16. NET SALES AND TRANSACTION-BASED RETURN RATE
--
-- Business Question:
-- What are gross sales, recorded refunds, net sales after
-- recorded refunds, and the percentage of sales transactions
-- associated with at least one return?
--
-- Reporting Purpose:
-- Adds return measures to the overall sales reporting picture.
--
-- KPI DEFINITIONS:
-- Net sales after recorded refunds:
-- Gross sales minus recorded refund amounts.
--
-- Transaction-based return rate:
-- Distinct returned sales transactions divided by total
-- sales transactions, multiplied by 100.
--
-- Multiple return records against one sale count as one
-- returned transaction in the return-rate numerator.
-- ==========================================================

WITH sales_summary AS (

    SELECT
        COUNT(*) AS total_transactions,

        COALESCE(
            SUM(total_amount),
            0
        ) AS gross_sales

    FROM sales
),

returns_summary AS (

    SELECT
        COUNT(*) AS total_return_records,

        COUNT(
            DISTINCT sale_id
        ) AS distinct_returned_transactions,

        COALESCE(
            SUM(refund_amount),
            0
        ) AS total_refunds

    FROM returns
)

SELECT

    ss.total_transactions,

    ss.gross_sales,

    rs.total_return_records,

    rs.distinct_returned_transactions,

    rs.total_refunds,

    ss.gross_sales - rs.total_refunds
        AS net_sales_after_recorded_refunds,

    ROUND(
        100.0 * rs.distinct_returned_transactions
        / NULLIF(ss.total_transactions, 0),
        2
    ) AS transaction_based_return_rate_percent

FROM sales_summary AS ss

CROSS JOIN returns_summary AS rs;


-- ==========================================================
-- 17. STORE SALES RANKING
--
-- Business Question:
-- How do stores rank according to recorded gross sales?
--
-- Reporting Purpose:
-- Compares store performance using a SQL window function.
--
-- Method:
-- RANK() assigns the same ranking to stores with equal
-- gross sales. Stores without recorded sales remain included.
-- ==========================================================

WITH store_sales AS (

    SELECT
        st.store_id,

        st.store_name,

        COALESCE(
            SUM(s.total_amount),
            0
        ) AS gross_sales

    FROM stores AS st

    LEFT JOIN sales AS s
        ON s.store_id = st.store_id

    GROUP BY
        st.store_id,
        st.store_name
)

SELECT

    store_id,

    store_name,

    gross_sales,

    RANK() OVER (
        ORDER BY gross_sales DESC
    ) AS sales_rank

FROM store_sales

ORDER BY
    sales_rank,
    store_name;


-- ==========================================================
-- END OF RETAILMART REPORTING QUERIES
-- ==========================================================

	
