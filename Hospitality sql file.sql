use hosp_data;
SELECT * FROM hosp_data.`dim_date`;
SELECT * FROM hosp_data.`dim_hotels`;
SELECT * FROM hosp_data.`dim_rooms`;
SELECT * FROM hosp_data.`fact_bookings`;
SELECT * FROM hosp_data.fact_aggregated_bookings;

-- KPI 
-- Total Revenue
SELECT SUM(revenue_realized) AS Total_Revenue
FROM fact_bookings;

-- Occupancy Rate
SELECT Round((SUM(successful_bookings) * 100.0 / SUM(capacity))) AS Occupancy_Rate
FROM fact_aggregated_bookings;

-- Total Successful Bookings
SELECT SUM(successful_bookings) AS Total_Bookings
FROM fact_aggregated_bookings;

-- Utilized Capacity
SELECT 
    (SUM(successful_bookings) * 100.0 / SUM(capacity)) AS Utilized_Capacity
FROM fact_aggregated_bookings;

-- Average Rating
SELECT AVG(ratings_given) AS Average_Rating
FROM fact_bookings;

-- Total Cancelled bookings
SELECT 
    COUNT(*) AS Total_Cancelled_Bookings
FROM fact_bookings
WHERE booking_status = 'Cancelled';

-- Cancellation %
SELECT (SUM(CASE WHEN booking_status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0) / COUNT(*) 
AS Cancellation_Percentage 
FROM fact_bookings;

-- Total Checked Out
SELECT COUNT(*) AS Total_Checked_Out
FROM fact_bookings
WHERE booking_status = 'Checked Out';

-- No Show Rate %
SELECT (SUM(CASE WHEN booking_status = 'No Show' THEN 1 ELSE 0 END) * 100.0) / COUNT(*) 
AS No_Show_Rate
FROM fact_bookings;

-- Booking % by Platform
SELECT booking_platform,(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM fact_bookings)) AS Booking_Percentage
FROM fact_bookings
GROUP BY booking_platform;

















