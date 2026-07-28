/* ===========================================================
1. Executive Sales Summary
=========================================================== */

SELECT
    COUNT(*) AS total_sales,
    SUM(total_amount) AS total_revenue,
    ROUND(AVG(total_amount),2) AS average_sale,
    MAX(total_amount) AS highest_sale,
    MIN(total_amount) AS lowest_sale
FROM sales;


/* ===========================================================
2. Revenue by Store
=========================================================== */

SELECT
    st.store_name,
    SUM(s.total_amount) AS revenue
FROM sales s
JOIN stores st
ON s.store_id = st.store_id
GROUP BY st.store_name
ORDER BY revenue DESC;


/* ===========================================================
3. Revenue by Province
=========================================================== */

SELECT
    st.province,
    SUM(s.total_amount) AS revenue
FROM sales s
JOIN stores st
ON s.store_id = st.store_id
GROUP BY st.province
ORDER BY revenue DESC;


/* ===========================================================
4. Best Selling Products
=========================================================== */

SELECT
    p.product_name,
    SUM(s.quantity) AS units_sold,
    SUM(s.total_amount) AS revenue
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;


/* ===========================================================
5. Revenue by Product Category
=========================================================== */

SELECT
    p.category,
    SUM(s.total_amount) AS revenue
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;


/* ===========================================================
6. Top Spending Customers
=========================================================== */

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.total_amount) AS total_spent
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
ORDER BY total_spent DESC;


/* ===========================================================
7. Employee Sales Performance
=========================================================== */

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    COUNT(s.sale_id) AS number_of_sales,
    SUM(s.total_amount) AS revenue_generated
FROM employees e
JOIN sales s
ON e.employee_id = s.employee_id
GROUP BY
    e.employee_id,
    e.first_name,
    e.last_name
ORDER BY revenue_generated DESC;


/* ===========================================================
8. Daily Sales Report
=========================================================== */

SELECT
    sale_date,
    COUNT(*) AS transactions,
    SUM(total_amount) AS revenue
FROM sales
GROUP BY sale_date
ORDER BY sale_date;


/* ===========================================================
9. Monthly Sales Report
=========================================================== */

SELECT
    DATE_TRUNC('month', sale_date) AS month,
    COUNT(*) AS transactions,
    SUM(total_amount) AS revenue
FROM sales
GROUP BY DATE_TRUNC('month', sale_date)
ORDER BY month;


/* ===========================================================
10. Average Order Value by Store
=========================================================== */

SELECT
    st.store_name,
    ROUND(AVG(s.total_amount),2) AS average_order_value
FROM sales s
JOIN stores st
ON s.store_id = st.store_id
GROUP BY st.store_name
ORDER BY average_order_value DESC;


/* ===========================================================
11. Returns Summary
=========================================================== */

SELECT
    COUNT(*) AS total_returns,
    SUM(refund_amount) AS total_refunds,
    ROUND(AVG(refund_amount),2) AS average_refund
FROM returns;


/* ===========================================================
12. Products with Returns
=========================================================== */

SELECT
    p.product_name,
    COUNT(r.return_id) AS returns,
    SUM(r.refund_amount) AS refund_value
FROM returns r
JOIN sales s
ON r.sale_id = s.sale_id
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY refund_value DESC;


/* ===========================================================
13. Sales Target vs Actual
=========================================================== */

SELECT
    st.store_name,
    t.sales_target,
    COALESCE(SUM(s.total_amount),0) AS actual_sales,
    COALESCE(SUM(s.total_amount),0)-t.sales_target AS variance
FROM targets t
JOIN stores st
ON t.store_id = st.store_id
LEFT JOIN sales s
ON s.store_id = st.store_id
GROUP BY
    st.store_name,
    t.sales_target
ORDER BY variance DESC;


/* ===========================================================
14. Top 5 Highest Revenue Transactions
=========================================================== */

SELECT
    sale_id,
    sale_date,
    total_amount
FROM sales
ORDER BY total_amount DESC
LIMIT 5;


/* ===========================================================
15. Executive KPI Dashboard
=========================================================== */

SELECT
    (SELECT COUNT(*) FROM sales) AS total_transactions,
    (SELECT SUM(total_amount) FROM sales) AS total_revenue,
    (SELECT COUNT(*) FROM customers) AS total_customers,
    (SELECT COUNT(*) FROM products) AS total_products,
    (SELECT COUNT(*) FROM stores) AS total_stores,
    (SELECT COUNT(*) FROM employees) AS total_employees,
    (SELECT COUNT(*) FROM returns) AS total_returns;
	