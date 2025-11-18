-- File: 03_analysis_queries.sql
-- Useful analysis queries that mirror your notebook charts and KPIs.
use supermart_db;
-- 0) Quick counts / sanity checks
SELECT COUNT(*) AS total_rows FROM supermart_data_table;
SELECT COUNT(DISTINCT order_id) AS unique_orders FROM supermart_data_table;

-- 1) Total sales, profit and average discount
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(AVG(discount_percent),2) AS avg_discount_percent
FROM supermart_data_table;

-- 2) Sales by category (descending)
SELECT 
  category,
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit
FROM supermart_data_table
GROUP BY category
ORDER BY total_sales DESC;

-- 3) Profit by category (descending)
SELECT 
  category,
  SUM(profit) AS total_profit
FROM supermart_data_table
GROUP BY category
ORDER BY total_profit DESC;

-- 4) Monthly sales trend (time-series)
SELECT 
  order_month_year,
  SUM(sales) AS monthly_sales
FROM supermart_data_table
GROUP BY order_month_year
ORDER BY STR_TO_DATE(CONCAT(order_month_year,'-01'), '%Y-%m-%d');

-- 5) Monthly profit trend
SELECT 
  order_month_year,
  SUM(profit) AS monthly_profit
FROM supermart_data_table
GROUP BY order_month_year
ORDER BY STR_TO_DATE(CONCAT(order_month_year,'-01'), '%Y-%m-%d');

-- 6) Sales and profit by city (top 10)
SELECT city, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM supermart_data_table
GROUP BY city
ORDER BY total_sales DESC
LIMIT 10;

-- 7) Pareto: top customers by sales + cumulative percent (window functions)
-- MySQL 8+ required for window functions
WITH cust AS (
  SELECT
    customer_name,
    SUM(sales) AS total_sales
  FROM supermart_data_table
  GROUP BY customer_name
)
SELECT
  customer_name,
  total_sales,
  ROUND(100 * total_sales / (SELECT SUM(total_sales) FROM cust), 2) AS pct_of_total,
  ROUND(
    100 * SUM(total_sales) OVER (ORDER BY total_sales DESC
                                  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
    / (SELECT SUM(total_sales) FROM cust),
    2
  ) AS cumulative_pct
FROM cust
ORDER BY total_sales DESC
LIMIT 40;

-- 8) Average profit margin by category
SELECT 
  category,
  ROUND(AVG(profit_margin),2) AS avg_profit_margin
FROM supermart_data_table
GROUP BY category
ORDER BY avg_profit_margin DESC;

-- 9) Discount percent vs sales buckets (example grouping)
SELECT
  FLOOR(discount_percent/5)*5 AS discount_bucket,
  -- COUNT(*) AS rows,
  SUM(sales) AS total_sales,
  ROUND(AVG(profit_margin),2) AS avg_profit_margin
FROM supermart_data_table
GROUP BY discount_bucket
ORDER BY discount_bucket;

-- 10) Category × Month pivot source (useful for Power BI or heatmap)
SELECT category, order_month_year, SUM(sales) AS sales_month
FROM supermart_data_table
GROUP BY category, order_month_year
ORDER BY category, STR_TO_DATE(CONCAT(order_month_year,'-01'), '%Y-%m-%d');
