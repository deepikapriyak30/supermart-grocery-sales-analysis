# supermart-grocery-sales-analysis
End-to-end retail analytics project using Python: EDA, visualizations, KPIs, time-series trends, and machine learning models to analyze Supermart grocery sales and profit patterns.


# Supermart Grocery Sales Analysis

## Executive Summary
Using Python, SQL, and data visualization techniques, I analyzed a grocery delivery dataset to uncover sales behavior, customer patterns, and profitability drivers for a fictional supermarket in Tamil Nadu, India.

**The analysis focused on understanding:**

- Which customers and categories contribute the most revenue

- How discounts influence profit margins

- How sales and profit change over time

- Whether profit can be predicted using machine learning models

The project delivered several actionable insights that can support targeted marketing, pricing optimization, and strategic revenue planning.

---

## Business Problem
Grocery platforms rely heavily on repeat customers and consistent monthly demand.

**However, the business lacked clarity on:**

- Which customers contribute the most to total revenue

- How category-wise performance changes month to month

- Whether discounts are actually improving profitability

- If profit can be predicted accurately using ML models

Without this understanding, the business cannot optimize pricing, discounting, or customer retention strategy.

---

## Methodology
1. Cleaned and explored the dataset using Python (Pandas, NumPy, Matplotlib, Seaborn).
2. Built visualizations and KPIs to understand sales, profit patterns, customer behavior, and monthly trends.
3. Created a Power BI dashboard for interactive reporting.
4. Built machine learning models (Linear Regression, Random Forest) to test if profit can be predicted.
5. SQL queries will be added for data extraction and transformation.

---

## Skills Demonstrated
**Python:** pandas, numpy, matplotlib, seaborn, scikit-learn

**Data Analysis:** EDA, KPI creation, data cleaning, feature engineering

**Visualization:** trend charts, bar charts, heatmaps, Pareto analysis

**ML Basics:** regression models, model evaluation, error analysis

**Power BI:** dashboarding, DAX fundamentals, data modeling 

**SQL:** Joins, filters, grouping, aggregations

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

