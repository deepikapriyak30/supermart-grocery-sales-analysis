# supermart-grocery-sales-analysis
End-to-end retail analytics project using Python: EDA, visualizations, KPIs, time-series trends, and machine learning models to analyze Supermart grocery sales and profit patterns.


# Supermart Grocery Sales Analysis

## Executive Summary
Using Python, Power BI, and SQL, I analyzed 10,000+ grocery orders to understand revenue drivers, customer behavior, category performance, and profit trends for Supermart (Tamil Nadu–based fictional grocery app).

The analysis shows which product categories generate the highest profit, how discounts affect margins, which customers drive the most revenue, and why profit-prediction models struggle to perform. These insights support better decisions around pricing, inventory planning, and customer retention.

---

## Business Problem
Supermart wants to understand why certain categories and cities perform better, how discounts impact profits, which customers contribute the most revenue, and whether profit can be predicted reliably from sales data.

The goal is to build a clear analytical view that helps improve revenue, optimize product performance, and guide data-driven business strategy.

---

## Methodology
1. Cleaned and explored the dataset using Python (Pandas, NumPy, Matplotlib, Seaborn).
2. Built visualizations and KPIs to understand sales, profit patterns, customer behavior, and monthly trends.
3. Created a Power BI dashboard for interactive reporting.
4. Built machine learning models (Linear Regression, Random Forest) to test if profit can be predicted.
5. SQL queries will be added for data extraction and transformation.

---

## Skills Demonstrated
**Python:** Data cleaning, EDA, visualizations, KPIs, time-series trends, machine learning  
**Power BI:** Interactive dashboards, DAX, data modeling  
**SQL:** Joins, filters, grouping, aggregations  
**Data Analytics:** Business KPI design, trend analysis, category insights  

---

## Key Results & Insights
- **Total Sales:** ₹14,956,982  
- **Total Profit:** ₹3,747,121  
- **Profit Margin:** 25.05%  
- **Total Orders:** 9,994  
- **Unique Customers:** 50  

**Category Insights:**  
- Snacks, Bakery, and Beverages drive strong sales.  
- Eggs, Meat & Fish have the highest profit margins.  
- Discounts remain consistent across categories and do not strongly change profit patterns.

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

