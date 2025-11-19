# supermart-grocery-sales-analysis
End-to-end retail analytics project using Python: EDA, visualizations, KPIs, time-series trends, and machine learning models to analyze Supermart grocery sales and profit patterns.


# Supermart Grocery Sales Analysis

## Executive Summary
Using Python, SQL, and data visualization techniques, I analyzed a grocery delivery dataset to uncover sales behavior, customer patterns, and profitability drivers for a fictional supermarket in Tamil Nadu, India.

The analysis focused on understanding:

- Which customers and categories contribute the most revenue

- How discounts influence profit margins

- How sales and profit change over time

- Whether profit can be predicted using machine learning models

The project delivered several actionable insights that can support targeted marketing, pricing optimization, and strategic revenue planning.

---

## Business Problem
Grocery businesses depend heavily on repeat customers and stable monthly demand.

However, the supermarket lacked clear visibility into several key performance areas:

- Which customers and product categories generate the highest revenue

- How sales and profit trends change month-to-month

- Whether discounts are actually improving profitability or hurting margins

- If profit can be predicted reliably using machine learning models

Without answers to these questions, the business struggled to optimize pricing, discounting strategies, customer targeting, and inventory planning.

---

## Methodology
1. **Cleaned and prepared the dataset** using Python (Pandas, NumPy) by fixing data types, removing inconsistencies, and creating new calculated fields (profit margin, discount %, month/year features).

2. **Performed exploratory data analysis (EDA)** and built visualizations to understand sales trends, profit patterns, category performance, customer behavior, and seasonal effects using Matplotlib and Seaborn.

3. **Designed an interactive Power BI dashboard** to summarize key KPIs such as total sales, profit, monthly trends, top customers, and category insights.

4. **Developed machine learning models** (Linear Regression, Random Forest) to test whether profit can be predicted using available features.

5. **Wrote SQL queries** for data extraction, validation, aggregation, and deeper analysis (sales by category, regional performance, monthly trends, top customers, etc.).

---

## Skills Demonstrated
**Python:** Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn

**Data Analysis:** EDA, KPI creation, data cleaning, feature engineering

**Visualization (Python):** Bar charts, line charts, scatter plots, heatmaps, Pareto charts

**Power BI:** Dashboard design, interactive visuals, slicers, filters

**Machine Learning:** Linear Regression, Random Forest, model evaluation

**SQL:** Joins, grouping, filtering, aggregations, analytical queries

---

## Key Results & Insights
- **Total Sales:** ₹14,956,982  
- **Total Profit:** ₹3,747,121  
- **Profit Margin:** 25.05%  
- **Total Orders:** 9,994  
- **Unique Customers:** 50

## 📊 Sales by Category
<p align="centre">
<img src="https://github.com/deepikapriyak30/supermart-grocery-sales-analysis/blob/main/images/sales_by_category.jpg?raw=true" width="650">
</p>

**Category Insights:**  
- Eggs, Meat & Fish, Snacks, and Food Grains drive the highest sales.
- Eggs, Meat & Fish deliver the highest profit margins. 
- Discounts do not show a strong relationship with sales or profit in this dataset, suggesting they have limited impact on profitability.

**City Insights:**  
- Kanyakumari leads sales and profit, followed by Vellore and Bodi.  

**Monthly Trends:**  
- Clear upward trend from mid-2017 to 2019.  
- Peak months: September–December.

**Machine Learning Results:**  
Profit is difficult to predict using available features.

- **Linear Regression:** R² = 0.305  
- **Random Forest:** R² = 0.206  

Both models underperform, showing profit depends on hidden variables not present in the dataset (cost structure, category sourcing cost, seasonality, etc.).

---

## Business Recommendations
1. Focus on top-performing cities like **Kanyakumari, Vellore, Bodi** to improve targeted marketing.  
2. Increase inventory depth and promotion planning for **high-margin categories** (Eggs, Meat & Fish).  
3. Use customer segmentation to engage the top 20 customers contributing major revenue.  
4. Revisit discount strategy since it does not strongly influence profit.

---

## Next Steps
1. Add SQL pipeline for data extraction.  
2. Add Profit Forecasting Dashboard in Power BI.  
3. Expand dataset with operational cost details to improve ML model accuracy.

---

