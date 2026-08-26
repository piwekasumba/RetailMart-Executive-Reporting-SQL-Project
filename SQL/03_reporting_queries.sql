-- ==========================================================
-- RETAILMART EXECUTIVE REPORTING SQL PROJECT
-- Reporting Queries
-- PostgreSQL
--
-- Purpose:
-- Produce business-focused reporting outputs from the
-- RetailMart relational database.
--
-- Reporting Focus:
-- - Executive sales KPIs
-- - Store and provincial performance
-- - Product and category performance
-- - Customer activity
-- - Employee sales performance
-- - Sales trends
-- - Returns
-- - Target achievement
-- - Operational reporting
-- ==========================================================


-- ==========================================================
-- 1. EXECUTIVE SALES SUMMARY
-- Business Question:
-- What is the overall sales performance?
--
-- Reporting Purpose:
-- Provides a high-level KPI summary for management reporting.
-- ==========================================================

SELECT
    COUNT(*) AS total_transactions,
    SUM(total_amount) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS average_transaction_value,
    MAX(total_amount) AS highest_transaction_value,
    MIN(total_amount) AS lowest_transaction_value
FROM sales;


-- ==========================================================
-- 2. REVENUE BY STORE
-- Business Question:
-- Which stores generated the highest revenue?
--
-- Reporting Purpose:
-- Supports store performance monitoring.
-- ==========================================================

SELECT
    st.store_name,
    st.city,
    st.province,
    COUNT(s.sale_id) AS total_transactions,
    SUM(s.total_amount) AS total_revenue,
    ROUND(AVG(s.total_amount), 2) AS average_transaction_value
FROM sales AS s
INNER JOIN stores AS st
    ON s.store_id = st.store_id
GROUP BY
    st.store_id,
    st.store_name,
    st.city,
    st.province
ORDER BY total_revenue DESC;


-- ==========================================================
-- 3. REVENUE BY PROVINCE
-- Business Question:
-- Which provinces generated the highest sales revenue?
--
-- Reporting Purpose:
-- Supports geographic performance reporting.
-- ==========================================================

SELECT
    st.province,
    COUNT(s.sale_id) AS total_transactions,
    SUM(s.total_amount) AS total_revenue,
    ROUND(AVG(s.total_amount), 2) AS average_transaction_value
FROM sales AS s
INNER JOIN stores AS st
    ON s.store_id = st.store_id
GROUP BY st.province
ORDER BY total_revenue DESC;


-- ==========================================================
-- 4. PRODUCT PERFORMANCE
-- Business Question:
-- Which products generated the highest sales revenue?
--
-- Reporting Purpose:
-- Supports product performance and sales reporting.
-- ==========================================================

SELECT
    p.product_name,
    p.category,
    p.brand,
    SUM(s.quantity) AS units_sold,
    SUM(s.total_amount) AS total_revenue,
    ROUND(AVG(s.total_amount), 2) AS average_transaction_value
FROM sales AS s
INNER JOIN products AS p
    ON s.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category,
    p.brand
ORDER BY total_revenue DESC;


-- ==========================================================
-- 5. REVENUE BY PRODUCT CATEGORY
-- Business Question:
-- Which product categories contribute the most revenue?
--
-- Reporting Purpose:
-- Supports category-level performance reporting.
-- ==========================================================

SELECT
    p.category,
    SUM(s.quantity) AS units_sold,
    SUM(s.total_amount) AS total_revenue,
    ROUND(AVG(s.total_amount), 2) AS average_transaction_value
FROM sales AS s
INNER JOIN products AS p
    ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;


-- ==========================================================
-- 6. TOP CUSTOMERS BY SPEND
-- Business Question:
-- Which customers generated the highest sales value?
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
-- 7. EMPLOYEE SALES PERFORMANCE
-- Business Question:
-- Which employees generated the highest sales revenue?
--
-- Reporting Purpose:
-- Supports operational performance reporting.
-- ==========================================================

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    st.store_name,
    COUNT(s.sale_id) AS total_transactions,
    SUM(s.total_amount) AS revenue_generated,
    ROUND(AVG(s.total_amount), 2) AS average_transaction_value
FROM employees AS e
INNER JOIN sales AS s
    ON e.employee_id = s.employee_id
INNER JOIN stores AS st
    ON e.store_id = st.store_id
GROUP BY
    e.employee_id,
    e.first_name,
    e.last_name,
    st.store_name
ORDER BY revenue_generated DESC;


-- ==========================================================
-- 8. DAILY SALES REPORT
-- Business Question:
-- How does sales activity change from day to day?
--
-- Reporting Purpose:
-- Supports daily operational monitoring.
-- ==========================================================

SELECT
    sale_date,
    COUNT(*) AS total_transactions,
    SUM(total_amount) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS average_transaction_value
FROM sales
GROUP BY sale_date
ORDER BY sale_date;


-- ==========================================================
-- 9. MONTHLY SALES REPORT
-- Business Question:
-- How does sales performance change over time?
--
-- Reporting Purpose:
-- Supports management trend reporting.
-- ==========================================================

SELECT
    DATE_TRUNC('month', sale_date)::DATE AS sales_month,
    COUNT(*) AS total_transactions,
    SUM(total_amount) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS average_transaction_value
FROM sales
GROUP BY DATE_TRUNC('month', sale_date)
ORDER BY sales_month;


-- ==========================================================
-- 10. AVERAGE TRANSACTION VALUE BY STORE
-- Business Question:
-- Which stores have the highest average transaction value?
--
-- Reporting Purpose:
-- Supports store-level transaction performance analysis.
-- ==========================================================

SELECT
    st.store_name,
    COUNT(s.sale_id) AS total_transactions,
    SUM(s.total_amount) AS total_revenue,
    ROUND(AVG(s.total_amount), 2) AS average_transaction_value
FROM sales AS s
INNER JOIN stores AS st
    ON s.store_id = st.store_id
GROUP BY
    st.store_id,
    st.store_name
ORDER BY average_transaction_value DESC;


-- ==========================================================
-- 11. RETURNS SUMMARY
-- Business Question:
-- What is the overall level of product returns?
--
-- Reporting Purpose:
-- Supports operational monitoring of returns and refunds.
-- ==========================================================

SELECT
    COUNT(*) AS total_returns,
    SUM(refund_amount) AS total_refund_value,
    ROUND(AVG(refund_amount), 2) AS average_refund_value
FROM returns;


-- ==========================================================
-- 12. RETURN PERFORMANCE BY PRODUCT
-- Business Question:
-- Which products generated the highest refund value?
--
-- Reporting Purpose:
-- Supports product and returns monitoring.
-- ==========================================================

SELECT
    p.product_name,
    p.category,
    COUNT(r.return_id) AS total_returns,
    SUM(r.refund_amount) AS total_refund_value,
    ROUND(AVG(r.refund_amount), 2) AS average_refund_value
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
-- 13. STORE SALES TARGET PERFORMANCE
-- Business Question:
-- How do actual store sales compare with monthly targets?
--
-- Reporting Purpose:
-- Supports target monitoring and management reporting.
-- ==========================================================

SELECT
    st.store_name,
    t.target_month,
    t.sales_target,
    COALESCE(SUM(s.total_amount), 0) AS actual_sales,

    COALESCE(SUM(s.total_amount), 0) - t.sales_target
        AS variance_to_target,

    ROUND(
        100.0 * COALESCE(SUM(s.total_amount), 0)
        / NULLIF(t.sales_target, 0),
        2
    ) AS target_achievement_percent

FROM targets AS t

INNER JOIN stores AS st
    ON t.store_id = st.store_id

LEFT JOIN sales AS s
    ON s.store_id = t.store_id
    AND DATE_TRUNC('month', s.sale_date)
        = DATE_TRUNC('month', t.target_month)

GROUP BY
    st.store_id,
    st.store_name,
    t.target_month,
    t.sales_target

ORDER BY target_achievement_percent DESC;


-- ==========================================================
-- 14. TOP 5 SALES TRANSACTIONS
-- Business Question:
-- Which transactions generated the highest individual sales?
--
-- Reporting Purpose:
-- Provides a simple transaction-level performance view.
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
-- Business Question:
-- What are the key operational metrics for the business?
--
-- Reporting Purpose:
-- Provides a consolidated KPI view for executive reporting.
-- ==========================================================

SELECT
    (SELECT COUNT(*) FROM sales)
        AS total_transactions,

    (SELECT SUM(total_amount) FROM sales)
        AS total_revenue,

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
        AS total_returns,

    (SELECT COALESCE(SUM(refund_amount), 0) FROM returns)
        AS total_refund_value;


-- ==========================================================
-- END OF REPORTING QUERIES
-- ==========================================================

	
