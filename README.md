# netflix-sql-analysis
SQL analysis of Netflix titles dataset exploring content trends, ratings, and production patterns.
# Netflix SQL Data Analysis

## Project Overview
This project explores Netflix content data using SQL. The analysis investigates content distribution, release trends, ratings, and geographic production patterns.

## Dataset
Netflix Movies and TV Shows dataset from Kaggle.
The dataset contains information about Netflix titles including:
- title
- type (movie or TV show)
- director
- cast
- country
- release_year
- rating
- duration
- genre
- description
Total records: ~8,800

## Business Questions

1. How many movies vs TV shows are on Netflix?
2. Which rating appears most frequently?
3. What countries produce the most content?
5. What year had the most content added?

## Tools Used
PostgreSQL
SQL
GitHub

## Key Questions
- How many movies vs TV shows exist on Netflix?
- Which years had the most content released?
- Which countries produce the most Netflix content?

## Example Query

SELECT type, COUNT(*) AS total_titles
FROM netflix
GROUP BY type;

## Key Insights
- Movies significantly outnumber TV shows 
- TV MA is the most common rating
- The United States produces the most titles
- 2018 had the highest number of titles produced
- Content production increased rapidly after 2016 
