# Deforestation-and-Tourism

## Introduction & project overview

For this project, we chose to explore the global reforestation efforts. We sourced datasets detailing reforestation data both in percentages and hectares per year. To consolidate and analyze this data, we identified a table listing each country alongside its ISO code and geographical coordinates. After reviewing our business objectives, we decided to include tourism-related data and operate as a tourism agency. Our goal was to delve into ecotourism and pinpoint suitable locations to design eco-tour packages.

## Hypothesis

We formulated two hypotheses:
1. Countries engaged in reforestation may appeal to eco-tourists. Which countries worldwide are actively reforesting their land?
2. Among the most-visited nations, which ones possess notable forest land-use patterns? Essentially, which reforesting countries also rank high in terms of tourist visits?

## Datasets

Datasets:	
- https://gist.github.com/tadast/8827699
	Table:	country_codes	
	Information:	Countries names with their  (ISO 3166-1) codes and coordinates
- https://www.kaggle.com/datasets/konradb/deforestation-dataset	
	Table:	deforest_percent	
	Information:	Deforestation by comparison of percent of land as forest between 2000 and 2020
- https://data.apps.fao.org/catalog/dataset/forest-area-1990-2020-1000-ha/resource/3cc5000d-184c-4ebe-8e54-b71910111f12	
	Table:	forest_hectares	
	Information:	Hectares of forest by country
- https://worldpopulationreview.com/country-rankings/most-visited-countries	
	Table: top_visited	
	Information:	Number of persons (i.e. tourist) entering countries per year


## Data preparation and Analysis

The initial datasets were prepared to allow us to fit into our database,
allowing us to retrieve informations about visits and evolution of landuse by country.
Our database contains four tables, with three tables containing the countries information and one allowing us to join them.

### Main dataset issues

-	Difficulty in finding compatible datasets
-	Country names are not normalized across datasets
-	Missing and incomplete datasets  

### Solutions for the dataset issues

-	Sanitised datasets
-	Transformed datasets
-	Supplement datasets by joining

The database was then used to get a better understanding of our potential market.
The performed queries chosen were:
 - Finding the 10 most visited countries
 - Finding the 10 countries with the highest reforestation percent
 - Finding the 10 countries with the most forest per hectares
 - Retrieving data for displaying information on tourism in a heatmap
 - Retrieving data for displaying information on deforestation in a heatmap
 - Retrieving data for the 5 most and 5 least visited countries showing their re/deforestation percentages and number of tourists in 2020
 - Number of Tourist visits in our dataset
 - Finding Most reforestation effort vs most deforestation

## Conclusions
Our analysis validated the first hypothesis, as the data enabled us to identify countries that are actively reforesting their land while gaining insights into their tourism industry.
