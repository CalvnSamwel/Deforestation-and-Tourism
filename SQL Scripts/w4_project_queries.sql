-- initialize correct db
use w4_project_db;

-- checking that all the table data imported
SELECT * FROM country_codes;
SELECT * FROM deforest_percent;
SELECT * FROM top_visited;
SELECT * FROM forest_hectares;

-- Top 10 visited countries
SELECT country_name as 'Country Name', num_of_arrivals
FROM w4_project_db.top_visited
ORDER BY num_of_arrivals DESC
LIMIT 10;


-- Top 10 most reforested countries by %
SELECT cc.country_name as 'Country Name', 
dp.country_code as 'Country Code',
dp.dp_delta as '% Increase'
FROM w4_project_db.deforest_percent AS dp
JOIN w4_project_db.country_codes AS cc
on dp.country_code = cc.country_code
ORDER BY dp.dp_delta DESC
LIMIT 10;

-- Countries with most Forest in hectares
SELECT country_name as 'Country Name', 
fh_2020 as 'Forest per 1000 ha'
FROM w4_project_db.forest_hectares
ORDER BY fh_2020 DESC
LIMIT 10;


-- Visited countries HEAT MAP
SELECT t.country_name as 'Country Name',
cc.country_code as 'Country Code',
t.num_of_arrivals as 'Number of Arrivals',
t.share_of_visit as 'Share of Visits'
FROM w4_project_db.top_visited as t
JOIN w4_project_db.country_codes AS cc
on t.country_name = cc.country_name;


-- Deforestation HEAT MAP
SELECT cc.country_name as 'Country Name',
dp.country_code as 'Country code',
dp.dp_2000 as '2000', 
dp.dp_2020 as '2020',
dp.dp_delta as '% Change'
FROM w4_project_db.deforest_percent AS dp
JOIN w4_project_db.country_codes AS cc
on dp.country_code = cc.country_code;


-- Top 5 Sorted by Top Tourist with % Share of tourists
SELECT cc.country_name, d.dp_delta, t.share_of_visit
FROM deforest_percent as d
Join country_codes as cc
on d.country_code = cc.country_code
Join top_visited as t
on cc.country_name = t.country_name
ORDER BY t.share_of_visit DESC
LIMIT 5;

-- Top 5 Sorted by Top Reforested with % Share of tourists
SELECT cc.country_name, d.dp_delta, t.share_of_visit
FROM deforest_percent as d
Join country_codes as cc
on d.country_code = cc.country_code
Join top_visited as t
on cc.country_name = t.country_name
ORDER BY d.dp_delta DESC
LIMIT 5;

-- Top 5 Sorted by Top Tourist with Tourist Number
SELECT cc.country_name, d.dp_delta, t.num_of_arrivals
FROM deforest_percent as d
Join country_codes as cc
on d.country_code = cc.country_code
Join top_visited as t
on cc.country_name = t.country_name
ORDER BY t.num_of_arrivals DESC
LIMIT 5;

-- Top 5 Sorted by Top Reforested with Tourist Number
SELECT cc.country_name, d.dp_delta, t.num_of_arrivals
FROM deforest_percent as d
Join country_codes as cc
on d.country_code = cc.country_code
Join top_visited as t
on cc.country_name = t.country_name
ORDER BY d.dp_delta DESC
LIMIT 5;

-- Number of Tourist visits in our dataset
SELECT SUM(num_of_arrivals) FROM top_visited;

-- Most reforestation effort vs most deforestation
SELECT MAX(dp_delta) as 'Top Reforester', 
MIN(dp_delta) as 'Top Deforester' FROM deforest_percent;
 
SELECT cc.country_name, d.dp_delta as 'Top Deforesters' FROM deforest_percent as d
JOIN country_codes as cc
ON cc.country_code = d.country_code
Order by dp_delta
LIMIT 2;

SELECT cc.country_name, d.dp_delta as 'Top Reforester' FROM deforest_percent as d
JOIN country_codes as cc
ON cc.country_code = d.country_code
Order by dp_delta DESC
LIMIT 1;



 