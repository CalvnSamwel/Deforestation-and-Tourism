SHOW  tables;

SELECT * FROM deforest_percent;

-- 1. Top 10 Countries with the Greatest Percentage Increase in Forest Cover

SELECT country_code as Country, dp_delta AS percentage_change 
FROM deforest_percent 
ORDER BY percentage_change DESC 
LIMIT 10;

-- 2. Top 10 Countries with the Greatest Percentage Decrease in Forest Cover

SELECT country_code as Country, dp_delta AS percentage_change 
FROM deforest_percent 
ORDER BY percentage_change ASC 
LIMIT 10;

-- 3. Countries That Have Maintained the Same Forest Cover (No Change)

SELECT country_code as Country, dp_delta AS percentage_change 
FROM deforest_percent 
WHERE dp_delta = 0;

-- 4. Total Number of Countries in the Dataset
SELECT COUNT(*) AS total_countries 
FROM deforest_percent;

-- 5. Average Percentage Change in Forest Cover Across All Countries

SELECT AVG(dp_delta) AS average_percentage_change 
FROM deforest_percent;

-- top visited countries
SELECT country_name, num_of_arrivals, share_of_visit 
FROM top_visited 
ORDER BY num_of_arrivals DESC
LIMIT 10;

SELECT country_name AS country, num_of_arrivals AS visitors, share_of_visit 
FROM top_visited 
ORDER BY num_of_arrivals DESC 
LIMIT 10;
