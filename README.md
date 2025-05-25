# 🚗 Historical Automobile Sales Analysis

This project contains SQL scripts to analyze a historical automobile sales dataset from 1980 to 2023. The dataset provides detailed insights into automobile sales trends across different cities, vehicle types, and economic conditions.

## 📁 File Structure

- `historical_automobile_sales.sql` – Contains SQL queries to explore and analyze the dataset.

## 🧾 Dataset Description

Each record includes:

- **Date**: Full date (MM/DD/YYYY)
- **Year / Month**: Temporal breakdown
- **Recession**: Binary (1 = recession, 0 = no recession)
- **Consumer_Confidence**: Index of economic sentiment
- **Seasonality_Weight**: Adjustment factor (0.0 - 1.5)
- **Price**: Average vehicle price (USD)
- **Advertising_Expenditure**: Monthly ad spend (USD)
- **Competition**: Market competition score
- **GDP**: Gross Domestic Product (USD)
- **Growth_Rate**: Economic growth percentage
- **Unemployment_Rate**: Percentage
- **Automobile_Sales**: Number of units sold
- **Vehicle_Type**: E.g., Supermini, Medium family car
- **City**: Location of sale (e.g., Georgia, New York)

## 📊 Analysis Included

- Overall data preview
- Total sales and pricing
- Month-wise trends
- City-wise sales distribution
- Recession impact
- Seasonal patterns
- GDP and unemployment correlation

## 🛠️ How to Use

1. Import the SQL file into your MySQL environment.
2. Ensure the `historical_automobile_sales` database is created.
3. Run individual queries to perform specific analyses.

## 🧠 Insights You Can Derive

- Economic indicators' influence on vehicle sales
- Sales trends across different vehicle categories
- Advertising spend efficiency
- City-level performance comparisons

## ✅ Requirements

- MySQL 5.7+ or compatible SQL engine
- Basic understanding of SQL syntax

## 📬 Feedback

For suggestions or contributions, feel free to open an issue or fork the repository.
