-- File: 01_create_database_and_table.sql
-- Create database and core table for Supermart dataset

CREATE DATABASE IF NOT EXISTS supermart_db;
USE supermart_db;

-- Create table. Adjust column sizes if your real data requires them.
CREATE TABLE IF NOT EXISTS supermart_data_table (
    order_id            VARCHAR(50) PRIMARY KEY,
    customer_name       VARCHAR(150),
    category            VARCHAR(100),
    sub_category        VARCHAR(100),
    city                VARCHAR(100),
    order_date          DATE,
    region              VARCHAR(100),

    sales               DECIMAL(12,2),
    discount            DECIMAL(12,2),
    profit              DECIMAL(12,2),

    state               VARCHAR(100),
    year                INT,
    month_no            INT,
    month               VARCHAR(20),
    day                 INT,
    weekday             VARCHAR(20),
    quarter             INT,

    order_month_year    VARCHAR(20),
    discount_percent    DECIMAL(6,2),
    log_profit          DECIMAL(12,6),
    profit_margin       DECIMAL(8,2)
);