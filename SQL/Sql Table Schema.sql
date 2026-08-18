
CREATE DATABASE IF NOT EXISTS financial_analytics;
USE financial_analytics;

-- 1. Customers Table
CREATE TABLE IF NOT EXISTS customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    segment VARCHAR(20) NOT NULL,
    join_date DATE NOT NULL,
    region VARCHAR(20) NOT NULL,
    status VARCHAR(10) NOT NULL
);

-- 2. Vendors Table
CREATE TABLE IF NOT EXISTS vendors (
    vendor_id VARCHAR(20) PRIMARY KEY,
    vendor_name VARCHAR(255) NOT NULL,
    category VARCHAR(50) NOT NULL,
    region VARCHAR(20) NOT NULL,
    active CHAR(1) NOT NULL
);

-- 3. Headcount Table
CREATE TABLE IF NOT EXISTS headcount (
    employee_id VARCHAR(20) PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    business_unit VARCHAR(20) NOT NULL,
    join_date DATE NOT NULL,
    status VARCHAR(10) NOT NULL,
    region VARCHAR(20) NOT NULL,
    cost_to_company INT NOT NULL
);

-- 4. Budget Table (Composite Primary Key)
CREATE TABLE IF NOT EXISTS budget (
    year INT NOT NULL,
    month INT NOT NULL,
    business_unit VARCHAR(20) NOT NULL,
    budgeted_revenue INT NOT NULL,
    budgeted_expense INT NOT NULL,
    PRIMARY KEY (year, month, business_unit)
);

-- 5. Financial Transactions Table (The main fact table)
CREATE TABLE IF NOT EXISTS financial_transactions (
    transaction_id VARCHAR(20) PRIMARY KEY,
    transaction_date DATE NOT NULL,
    amount DECIMAL(15,2) NOT NULL,
    account_type VARCHAR(20) NOT NULL,
    category VARCHAR(50) NOT NULL,
    business_unit VARCHAR(20) NOT NULL,
    region VARCHAR(20) NOT NULL,
    customer_id VARCHAR(20) NULL,
    vendor_id VARCHAR(20) NULL,
    description TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id)
);

use financial_analytics;

