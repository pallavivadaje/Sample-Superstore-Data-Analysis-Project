CREATE DATABASE s_superstore ;

USE s_superstore ;

SELECT * FROM samplesuperstore;

DESCRIBE samplesuperstore;

-- TOTAL SALES --
SELECT SUM(Sales) AS Total_Sales
FROM samplesuperstore;

-- TOTAL PROFIT --
SELECT SUM(Profit) AS Total_Profit
FROM samplesuperstore;

-- TOP 10 CUSTOMERS BY SALES --
SELECT 'Customer Name',
SUM(Sales) AS Total_Sales
FROM samplesuperstore
GROUP BY 'Customer Name'
ORDER BY Total_Sales DESC
LIMIT 10;

-- REGION-WISE REVENUE --
SELECT Region,
SUM(Sales) AS Revenue
FROM samplesuperstore
GROUP BY Region
ORDER BY Revenue DESC;

-- MONTHLY SALES TREND --
SELECT DATE_FORMAT(STR_TO_DATE(`Order Date`, '%d-%m-%Y'),'%Y-%m') AS Month,
SUM(Sales) AS Monthly_Sales
FROM samplesuperstore
GROUP BY Month
ORDER BY Month;

-- MOST PROFITABLE CATEGORY --
SELECT Category,
SUM(Profit) AS Total_Profit
FROM samplesuperstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- CUSTOMER PURCHASE ANALYSIS --
SELECT 'Customer Name',
COUNT('Order ID') AS Total_Orders,
SUM(Quantity) AS Total_Quantity,
SUM(Sales) AS Total_Spent,
SUM(Profit) AS Profit_Generated
FROM samplesuperstore
GROUP BY 'Customer Name'
ORDER BY Total_Spent DESC;

-- TOTAL ORDERS --
SELECT COUNT(DISTINCT 'Order ID') AS Total_Orders
FROM samplesuperstore;

-- TOTAL QUANTITY SOLD --
SELECT SUM(Quantity) AS Total_Quantity
FROM samplesuperstore;

-- SALES AND PROFIT BY CATEGORY --
SELECT Category,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM samplesuperstore
GROUP BY Category;

-- SUB-CATEGORY WISE SALES --
SELECT 'Sub-Category',
SUM(Sales) AS Total_Sales
FROM samplesuperstore
GROUP BY 'Sub-Category'
ORDER BY Total_Sales DESC;

-- PROFIT BY SEGMENT --
SELECT Segment,
SUM(Profit) AS Total_Profit
FROM samplesuperstore
GROUP BY Segment
ORDER BY Total_Profit DESC;

-- AVERAGE DISCOUNT BY CATEGORY --
SELECT Category,
AVG(Discount) AS Avg_Discount
FROM samplesuperstore
GROUP BY Category;

-- TOP 10 STATES BY SALES --
SELECT 'State/Province',
SUM(Sales) AS Total_Sales
FROM samplesuperstore
GROUP BY 'State/Province'
ORDER BY Total_Sales DESC
LIMIT 10;