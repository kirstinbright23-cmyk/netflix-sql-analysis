# netflix-sql-analysis
SQL analysis of Netflix titles dataset exploring content trends, ratings, and production patterns.
# Netflix SQL Data Analysis

## Project Overview
This project analyzes Netflix's catalog of movies and TV shows using SQL.
The goal is to explore trends in content type, ratings, release years,
and production countries.

Dataset: Netflix Movies and TV Shows dataset (Kaggle)
Tools: SQL, PostgreSQL, GitHub

## Dataset
The dataset contains 8,800+ Netflix titles including:

- show_id
- type (Movie or TV Show)
- title
- director
- cast
- country
- date_added
- release_year
- rating
- duration
- listed_in (genre)
- description

## Business Questions

1. How many movies vs TV shows are on Netflix?
2. Which rating appears most frequently?
3. What countries produce the most content?
5. What year had the most content added?

## Tools Used
- SQL
- PostgreSQL
- GitHub
- Kaggle Dataset
  
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
