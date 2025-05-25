# Created the historical automobile sales 
/*
Date - Full date (MM/DD/YYYY) of the record.
Year - Year of the sale. Ranges from 1980 to 2023.
Month - Month of the sale (e.g., Jan, Feb).
Recession - Binary indicator (1 = recession, 0 = no recession).
Consumer_Confidence - Index reflecting public economic sentiment (range: ~74 to 132).
Seasonality_Weight - Seasonal adjustment factor (range: 0.0 to 1.5).
Price - Average vehicle price in USD (range: ~$8,794 to ~$44,264).
Advertising_Expenditure - Monthly advertising spend in USD (range: $1,009 to $4,983).
Competition - Competition intensity score (range: 3 to 9).
GDP	- Gross Domestic Product for that period (range: ~$12.5B to ~$70.4B).
Growth_Rate	- Economic growth rate (from -4.23 to +0.81).
unemployment_rate - Monthly unemployment rate (from 1% to 6%).
Automobile_Sales - Number of automobiles sold (range: 102 to 21,147 units).
Vehicle_Type - Type of vehicle sold (5 categories including "Supperminicar", "Mediumfamilycar", "Smallfamiliycar").
City - City where the sales occurred (4 cities: Georgia, New York, Illinois, California).
*/

# Using the database
USE historical_automobile_sales;

# 1. View of data
SELECT * FROM historical_automobile_sales;

# 2. Total price of historical_automobile_sales
SELECT sum(Price) as Total_Price
FROM historical_automobile_sales;

# 3. Month wise total price
SELECT Month, sum(price) as MonthWiseTotal
FROM historical_automobile_sales
GROUP BY Month;

# 4. City and Automobile Sales
SELECT city, sum(automobile_sales) as CityWiseTotal
FROM historical_automobile_sales
GROUP BY city;

# 5. Vehicle Type wise total sales 
SELECT vehicle_type, sum(automobile_sales) as VehicleTypeWiseTotal
FROM historical_automobile_sales
GROUP BY vehicle_type;

# 6. Year wise total sales and the avg growth
SELECT Year,sum(automobile_sales) as TotalSales,avg(Growth_rate) as AvgGrowthRate
FROM historical_automobile_sales
GROUP BY year;

# 7. City wise unemployment rate 
SELECT city, max(unemployment_rate) AS Max_Unemployment_Rate,min(unemployment_rate) AS Min_Unemployment_Rate
FROM historical_automobile_sales
GROUP BY city;

# 8. YearWise unemployement rate 2000 - 2023
SELECT year, max(unemployment_rate) AS Max_Unemployment_Rate,min(unemployment_rate) AS Min_Unemployment_Rate
FROM historical_automobile_sales
WHERE year BETWEEN 2000 AND 2023
GROUP BY year;

# 9. YearWise GDP,Cosumer_Confidence,automobile_sales,vehicle_type
SELECT Year,City,vehicle_type,Consumer_confidence,automobile_sales,GDP
FROM historical_automobile_sales
ORDER BY automobile_sales;

# 10. Vehicle type and Cosumer_confidence related to it.
SELECT Vehicle_type, max(consumer_confidence) as MaxConsumerConfidence,min(consumer_confidence) as MinConsumerConfidence
FROM historical_automobile_sales
GROUP BY vehicle_type;

# 11. Avreage spend on advertisment expenditure and min and max as well
SELECT year, avg(Advertising_Expenditure) as AvgAdvertising_Expenditure, min(Advertising_Expenditure) as MinimumSpend, max(Advertising_Expenditure) as MaximumSpend
FROM historical_automobile_sales
GROUP BY year;

# 12. Second Highest Automobile_Sales
SELECT max(automobile_sales )
FROM historical_automobile_sales
WHERE automobile_sales < (SELECT max(automobile_sales) FROM historical_automobile_sales);