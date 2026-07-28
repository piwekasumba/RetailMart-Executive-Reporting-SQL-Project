CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50),
    province VARCHAR(50),
    join_date DATE
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    unit_price DECIMAL(10,2),
    stock_quantity INT
);

CREATE TABLE stores (
    store_id SERIAL PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50),
    province VARCHAR(50),
    store_type VARCHAR(50),
    opening_date DATE
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10,2),
    store_id INT,
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    sale_date DATE,
    customer_id INT,
    product_id INT,
    store_id INT,
    employee_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2),

        FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE returns (
    return_id SERIAL PRIMARY KEY,
    sale_id INT,
    return_date DATE,
    return_reason VARCHAR(100),
    refund_amount DECIMAL(10,2),

    FOREIGN KEY (sale_id) REFERENCES sales(sale_id)
);

CREATE TABLE targets (
    target_id SERIAL PRIMARY KEY,
    store_id INT,
    target_month DATE,
    sales_target DECIMAL(12,2),

    FOREIGN KEY (store_id) REFERENCES stores(store_id)
);

CREATE TABLE calendar (
    calendar_date DATE PRIMARY KEY,
    day_name VARCHAR(20),
    month_name VARCHAR(20),
    month_number INT,
    quarter INT,
    year INT
);