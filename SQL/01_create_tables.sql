-- ==========================================================
-- RETAILMART EXECUTIVE REPORTING SQL PROJECT
-- PostgreSQL Database Schema
--
-- Purpose:
-- Create the relational database structure used for
-- retail sales, customer, product, store, employee,
-- returns, targets and calendar reporting.
-- ==========================================================


-- ==========================================================
-- CUSTOMERS
-- Stores customer information used for sales reporting.
-- ==========================================================

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    city VARCHAR(50),
    province VARCHAR(50),
    join_date DATE
);


-- ==========================================================
-- PRODUCTS
-- Stores product information used for sales and
-- inventory-related reporting.
-- ==========================================================

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    brand VARCHAR(50),
    unit_price NUMERIC(10,2) NOT NULL
        CHECK (unit_price >= 0),
    stock_quantity INT NOT NULL DEFAULT 0
        CHECK (stock_quantity >= 0)
);


-- ==========================================================
-- STORES
-- Stores information about RetailMart locations.
-- ==========================================================

CREATE TABLE stores (
    store_id SERIAL PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    province VARCHAR(50) NOT NULL,
    store_type VARCHAR(50),
    opening_date DATE
);


-- ==========================================================
-- EMPLOYEES
-- Stores employee information linked to stores.
-- ==========================================================

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(50),
    hire_date DATE,
    salary NUMERIC(10,2)
        CHECK (salary >= 0),
    store_id INT NOT NULL,
    FOREIGN KEY (store_id)
        REFERENCES stores(store_id)
);


-- ==========================================================
-- SALES
-- Stores individual sales transactions.
-- ==========================================================

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    sale_date DATE NOT NULL,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    store_id INT NOT NULL,
    employee_id INT NOT NULL,
    quantity INT NOT NULL
        CHECK (quantity > 0),
    unit_price NUMERIC(10,2) NOT NULL
        CHECK (unit_price >= 0),
    total_amount NUMERIC(12,2) NOT NULL
        CHECK (total_amount >= 0),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id),

    FOREIGN KEY (store_id)
        REFERENCES stores(store_id),

    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);


-- ==========================================================
-- RETURNS
-- Stores product return transactions linked to sales.
-- ==========================================================

CREATE TABLE returns (
    return_id SERIAL PRIMARY KEY,
    sale_id INT NOT NULL,
    return_date DATE NOT NULL,
    return_reason VARCHAR(100),
    refund_amount NUMERIC(12,2) NOT NULL
        CHECK (refund_amount >= 0),

    FOREIGN KEY (sale_id)
        REFERENCES sales(sale_id)
);


-- ==========================================================
-- TARGETS
-- Stores monthly sales targets for each store.
-- Supports target-versus-actual reporting.
-- ==========================================================

CREATE TABLE targets (
    target_id SERIAL PRIMARY KEY,
    store_id INT NOT NULL,
    target_month DATE NOT NULL,
    sales_target NUMERIC(12,2) NOT NULL
        CHECK (sales_target >= 0),

    FOREIGN KEY (store_id)
        REFERENCES stores(store_id)
);


-- ==========================================================
-- CALENDAR
-- Provides standard date attributes for time-based
-- reporting and trend analysis.
-- ==========================================================

CREATE TABLE calendar (
    calendar_date DATE PRIMARY KEY,
    day_name VARCHAR(20) NOT NULL,
    month_name VARCHAR(20) NOT NULL,
    month_number INT NOT NULL,
    quarter INT NOT NULL,
    year INT NOT NULL
);


-- ==========================================================
-- INDEXES
-- Support common reporting joins and date filtering.
-- ==========================================================

CREATE INDEX idx_sales_sale_date
ON sales(sale_date);

CREATE INDEX idx_sales_customer
ON sales(customer_id);

CREATE INDEX idx_sales_product
ON sales(product_id);

CREATE INDEX idx_sales_store
ON sales(store_id);

CREATE INDEX idx_sales_employee
ON sales(employee_id);

CREATE INDEX idx_returns_sale
ON returns(sale_id);

CREATE INDEX idx_targets_store_month
ON targets(store_id, target_month);
