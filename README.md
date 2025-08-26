## Hospitality-Management - Data Analysis Project
# Objective

This project aims to analyze hospitality industry data (135,000+ rows) to uncover insights about customer behavior, booking trends, and revenue performance. The goal is to optimize decision-making for hotel operations, improve occupancy, and identify revenue opportunities.

# Tools and Technologies
Excel (Data Cleaning & Preprocessing)
SQL (Data Exploration & Queries)
Power BI (Dashboard & KPI Analysis)
Tableau (Interactive Visualization & Storytelling)

# Excel Data Cleaning
Removed duplicates and handled missing values.
Standardized date and text formats.
Used pivot tables for initial analysis.
Created derived columns (e.g., stay duration, revenue per booking).

# SQL 
-- Top 5 Revenue Generating Cities
SELECT City, SUM(Revenue) AS total_revenue
FROM bookings
GROUP BY City
ORDER BY total_revenue DESC
LIMIT 5;

-- Occupancy Rate by Hotel
SELECT Hotel_Name,
       ROUND((SUM(Rooms_Occupied) / SUM(Total_Rooms)) * 100, 2) AS Occupancy_Rate
FROM bookings
GROUP BY Hotel_Name
ORDER BY Occupancy_Rate DESC;

-- Average Revenue per Customer
SELECT Customer_ID, ROUND(AVG(Revenue),2) AS avg_revenue
FROM bookings
GROUP BY Customer_ID
ORDER BY avg_revenue DESC;

-- Monthly Booking Trends
SELECT YEAR(Booking_Date) AS year,
       MONTH(Booking_Date) AS month,
       COUNT(*) AS total_bookings
FROM bookings
GROUP BY YEAR(Booking_Date), MONTH(Booking_Date)
ORDER BY year, month;

-- Revenue by Booking Channel
SELECT Booking_Channel, SUM(Revenue) AS total_revenue
FROM bookings
GROUP BY Booking_Channel
ORDER BY total_revenue DESC;

# Key Insights

Top performing cities and hotels by revenue.
Occupancy rate trends over time.
Average revenue per customer and customer segmentation.
Monthly booking patterns with seasonal variations.
Distribution of sales by booking channel (Online, Travel Agent, Walk-in).

# Visualization
Power BI: KPI cards (RevPAR, Occupancy, ADR), trend lines, and slicers (Yearly/Quarterly/Monthly).
Tableau: Interactive dashboards with filters for city, hotel, and booking channel.

# Visuals include:
Revenue and occupancy trends
Booking channel contribution
Seasonal analysis of bookings
Customer segmentation

# Conclusion
The analysis provided clear insights into customer preferences, revenue drivers, and seasonal trends. It helped identify:
Peak booking months for better resource planning.
Underperforming hotels/regions for targeted marketing.
High-value customers for loyalty programs.

⚡ This repository demonstrates how Excel, SQL, Power BI, and Tableau can be combined to transform raw hospitality data into actionable insights.

## 📊 Power BI Dashboard Preview
![image alt](https://github.com/MuzammilAzeem/Hospitality-Analysis/blob/8aa13087aeed047412d46c0514da52ac7a92a863/Hospitality%20PowerBI%20scrnshot.png)

## 📊 Tableau Dashboard Preview
![image alt](https://github.com/MuzammilAzeem/Hospitality-Analysis/blob/2907e63306cff44972612f05d69bf707de30e5c5/Hospitality%20Tableau%20scrnshot%20n.png)
