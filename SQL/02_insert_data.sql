INSERT INTO customers
(first_name, last_name, gender, email, phone, city, province, join_date)
VALUES
('Sipho','Dlamini','Male','sipho.dlamini@email.com','0823456789','Johannesburg','Gauteng','2025-01-15'),
('Nomsa','Nkosi','Female','nomsa.nkosi@email.com','0834567890','Soweto','Gauteng','2025-02-08'),
('Thabo','Mokoena','Male','thabo.mokoena@email.com','0845678901','Pretoria','Gauteng','2025-02-20'),
('Ayanda','Zulu','Female','ayanda.zulu@email.com','0812345678','Durban','KwaZulu-Natal','2025-03-05'),
('Lungile','Khumalo','Male','lungile.khumalo@email.com','0829876543','Pietermaritzburg','KwaZulu-Natal','2025-03-12'),
('Zanele','Mthembu','Female','zanele.mthembu@email.com','0837654321','Richards Bay','KwaZulu-Natal','2025-03-25'),
('John','Smith','Male','john.smith@email.com','0821112233','Cape Town','Western Cape','2025-04-01'),
('Sarah','Williams','Female','sarah.williams@email.com','0832223344','Stellenbosch','Western Cape','2025-04-15'),
('Michael','Brown','Male','michael.brown@email.com','0843334455','George','Western Cape','2025-04-22'),
('Lerato','Mabena','Female','lerato.mabena@email.com','0814445566','Polokwane','Limpopo','2025-05-02'),
('Kagiso','Molefe','Male','kagiso.molefe@email.com','0825556677','Mbombela','Mpumalanga','2025-05-10'),
('Naledi','Motsamai','Female','naledi.motsamai@email.com','0836667788','Bloemfontein','Free State','2025-05-18'),
('Bongani','Ndlovu','Male','bongani.ndlovu@email.com','0847778899','Gqeberha','Eastern Cape','2025-06-03'),
('Lindiwe','Jacobs','Female','lindiwe.jacobs@email.com','0818889900','East London','Eastern Cape','2025-06-12'),
('Tshepo','Mahlangu','Male','tshepo.mahlangu@email.com','0829990011','Rustenburg','North West','2025-06-25'),
('Rina','Botha','Female','rina.botha@email.com','0831011122','Kimberley','Northern Cape','2025-07-05'),
('Andile','Cele','Male','andile.cele@email.com','0842022233','Ballito','KwaZulu-Natal','2025-07-18'),
('Faith','Naidoo','Female','faith.naidoo@email.com','0813033344','Phoenix','KwaZulu-Natal','2025-08-02'),
('David','van Wyk','Male','david.vanwyk@email.com','0824044455','Centurion','Gauteng','2025-08-16'),
('Precious','Mokoena','Female','precious.mokoena@email.com','0835055566','Benoni','Gauteng','2025-09-01');

INSERT INTO products
(product_name, category, brand, unit_price, stock_quantity)
VALUES
('Coca-Cola Original Taste 2L','Beverages','Coca-Cola',24.99,500),
('Albany Superior White Bread','Bakery','Albany',18.99,300),
('Clover Full Cream Milk 2L','Dairy','Clover',39.99,250),
('Simba Potato Chips 120g','Snacks','Simba',21.99,400),
('Omo Auto Washing Powder 2kg','Household','Omo',129.99,150),
('Sunlight Dishwashing Liquid 750ml','Household','Sunlight',34.99,200),
('Ricoffy Instant Coffee 750g','Beverages','Ricoffy',149.99,120),
('Koo Baked Beans 410g','Groceries','Koo',21.99,350),
('Sasko Brown Bread','Bakery','Sasko',19.99,280),
('Nola Original Mayonnaise 750g','Groceries','Nola',49.99,180),
('Five Roses Tea 102 Bags','Beverages','Five Roses',74.99,220),
('Fresh Bananas 1kg','Fresh Produce','RetailMart Fresh',29.99,260),
('Chicken Breast Fillets 1kg','Meat','RetailMart Fresh',109.99,140),
('Eggs Large 18 Pack','Dairy','Rainbow',64.99,210),
('Sunfoil Cooking Oil 2L','Groceries','Sunfoil',89.99,170);

INSERT INTO stores
(store_name, city, province, store_type, opening_date)
VALUES
('RetailMart Sandton','Johannesburg','Gauteng','Supermarket','2018-03-15'),
('RetailMart Rosebank','Johannesburg','Gauteng','Supermarket','2019-07-20'),
('RetailMart Pretoria CBD','Pretoria','Gauteng','Hypermarket','2017-05-12'),
('RetailMart Durban Central','Durban','KwaZulu-Natal','Hypermarket','2016-09-08'),
('RetailMart Umhlanga','Durban','KwaZulu-Natal','Supermarket','2020-11-18'),
('RetailMart Cape Town CBD','Cape Town','Western Cape','Hypermarket','2015-04-01'),
('RetailMart Bellville','Cape Town','Western Cape','Supermarket','2019-01-25'),
('RetailMart Gqeberha','Gqeberha','Eastern Cape','Supermarket','2021-06-10'),
('RetailMart East London','East London','Eastern Cape','Supermarket','2022-02-15'),
('RetailMart Bloemfontein','Bloemfontein','Free State','Supermarket','2020-08-05');

INSERT INTO employees
(first_name, last_name, position, hire_date, salary, store_id)
VALUES
('Sipho','Mthembu','Sales Associate','2023-01-15',18000.00,1),
('Nomsa','Dlamini','Sales Associate','2022-07-10',18500.00,1),
('Thabo','Nkosi','Store Manager','2021-03-01',42000.00,1),
('Ayanda','Zulu','Sales Associate','2023-04-12',18000.00,2),
('Lerato','Mokoena','Store Manager','2020-11-20',43000.00,2),
('Michael','Smith','Sales Associate','2023-02-08',19000.00,3),
('Sarah','Williams','Store Manager','2019-08-15',45000.00,3),
('Bongani','Ndlovu','Sales Associate','2022-05-18',18500.00,4),
('Faith','Naidoo','Store Manager','2021-09-05',44000.00,4),
('David','van Wyk','Sales Associate','2023-06-01',19000.00,5);

INSERT INTO sales
(sale_date, customer_id, product_id, store_id, employee_id, quantity, unit_price, total_amount)
VALUES
('2025-09-01',1,1,1,1,2,24.99,49.98),
('2025-09-01',2,3,1,2,1,39.99,39.99),
('2025-09-02',3,2,2,4,3,18.99,56.97),
('2025-09-02',4,4,2,4,2,21.99,43.98),
('2025-09-03',5,5,3,6,1,129.99,129.99),
('2025-09-03',6,6,3,6,2,34.99,69.98),
('2025-09-04',7,7,4,8,1,149.99,149.99),
('2025-09-04',8,8,4,8,4,21.99,87.96),
('2025-09-05',9,9,5,10,2,19.99,39.98),
('2025-09-05',10,10,5,10,1,49.99,49.99),
('2025-09-06',11,11,6,7,1,74.99,74.99),
('2025-09-06',12,12,6,7,3,29.99,89.97),
('2025-09-07',13,13,7,5,2,109.99,219.98),
('2025-09-07',14,14,7,5,1,64.99,64.99),
('2025-09-08',15,15,8,9,2,89.99,179.98),
('2025-09-08',16,1,8,9,5,24.99,124.95),
('2025-09-09',17,2,9,3,2,18.99,37.98),
('2025-09-09',18,3,9,3,4,39.99,159.96),
('2025-09-10',19,4,10,2,3,21.99,65.97),
('2025-09-10',20,5,10,2,1,129.99,129.99);

INSERT INTO returns
(sale_id, return_date, return_reason, refund_amount)
VALUES
(2, '2025-09-05', 'Damaged Product', 39.99),
(5, '2025-09-08', 'Wrong Item Purchased', 129.99),
(9, '2025-09-10', 'Product Defective', 39.98),
(14, '2025-09-12', 'Customer Changed Mind', 64.99),
(18, '2025-09-15', 'Expired Product', 159.96);

INSERT INTO targets
(store_id, target_month, sales_target)
VALUES
(1,'2025-09-01',50000.00),
(2,'2025-09-01',45000.00),
(3,'2025-09-01',70000.00),
(4,'2025-09-01',65000.00),
(5,'2025-09-01',48000.00),
(6,'2025-09-01',80000.00),
(7,'2025-09-01',42000.00),
(8,'2025-09-01',40000.00),
(9,'2025-09-01',38000.00),
(10,'2025-09-01',36000.00);

INSERT INTO calendar (
    calendar_date,
    day_name,
    month_name,
    month_number,
    quarter,
    year
)
SELECT
    d::DATE,
    TO_CHAR(d, 'FMDay') AS day_name,
    TO_CHAR(d, 'FMMonth') AS month_name,
    EXTRACT(MONTH FROM d)::INT AS month_number,
    EXTRACT(QUARTER FROM d)::INT AS quarter,
    EXTRACT(YEAR FROM d)::INT AS year
FROM generate_series(
    '2025-01-01'::DATE,
    '2025-12-31'::DATE,
    '1 day'
) AS d;
