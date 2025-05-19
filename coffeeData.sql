select*from coffeeData_FINAL

---TOTAL REVENUE
SELECT SUM(money) AS total_revenue FROM coffeeData_FINAL;

--REVENUE BY COFFEE TYPE
SELECT coffee_name, SUM(money) AS revenue
FROM coffeeData_FINAL
GROUP BY coffee_name
ORDER BY revenue DESC;

-- Payment Method Count
SELECT cash_type, COUNT(*) AS count
FROM coffeeData_FINAL
GROUP BY cash_type;

-- Daily Sales Trend
SELECT date, SUM(money) AS daily_sales
FROM coffeeData_FINAL
GROUP BY date
ORDER BY date;

--Top 3 Best-Selling Coffees
SELECT TOP 3 coffee_name, SUM(money) AS revenue
FROM coffeeData_FINAL
GROUP BY coffee_name
ORDER BY revenue DESC;

-- Average Order Value
SELECT AVG(money) AS avg_order_value FROM coffeeData_FINAL;

-- Sales by Day of the Week
SELECT DATENAME(WEEKDAY, date) AS day, SUM(money) AS revenue
FROM coffeeData_FINAL
GROUP BY DATENAME(WEEKDAY, date);
