-- File: 04_views.sql
-- Create views to store frequently used aggregations (keeps repo tidy)

-- View: KPIs
CREATE OR REPLACE VIEW v_total_kpis AS
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(AVG(discount_percent),2) AS avg_discount_percent,
    COUNT(*) AS total_orders,
    COUNT(DISTINCT customer_name) AS unique_customers
FROM supermart_data_table;

-- View: Top category summary
CREATE OR REPLACE VIEW v_category_summary AS
SELECT category,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit,
       ROUND(AVG(profit_margin),2) AS avg_profit_margin
FROM supermart_data_table
GROUP BY category;

-- View: Monthly sales
CREATE OR REPLACE VIEW v_monthly_sales AS
SELECT order_month_year, SUM(sales) AS monthly_sales, SUM(profit) AS monthly_profit
FROM supermart_data_table
GROUP BY order_month_year
ORDER BY STR_TO_DATE(CONCAT(order_month_year,'-01'), '%Y-%m-%d');