--**DATA CLEANING**

-- Replace missing ratings
UPDATE netflix
SET rating = 'Unknown'
WHERE rating IS NULL;

-- Remove whitespace
UPDATE netflix
SET rating = TRIM(rating);

-- Fix data quality issue where movie duration was incorrectly stored in rating column
SELECT *
FROM netflix
WHERE rating LIKE '%min%';

UPDATE netflix
SET duration = rating
WHERE rating LIKE '%min%';

UPDATE netflix
SET rating = NULL
WHERE rating LIKE '%min%';

-- Replace missing directors with Unknown
SELECT
COALESCE(director, 'Unknown') AS director,
COUNT(*) AS total_titles
FROM netflix
GROUP BY director
ORDER BY total_titles DESC;

-- Replace missing country values
SELECT
COALESCE(country, 'Unknown') AS country,
COUNT(*) AS total_titles
FROM netflix
GROUP BY country
ORDER BY total_titles DESC;


--**Netflix SQL Analysis**

-- Movies vs TV Shows
SELECT type, COUNT(*) AS total_titles
FROM netflix
GROUP BY type;

-- Top countries producing content
SELECT country, COUNT(*) AS total_titles
FROM netflix
GROUP BY country
ORDER BY total_titles DESC;

-- Directors with the most titles
SELECT director, COUNT(*) AS total_titles
FROM netflix
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

-- Content  by Release Year
SELECT release_year, COUNT(*) AS total_titles
FROM netflix
GROUP BY release_year
ORDER BY total_titles DESC;

--Most Commmon Ratings
SELECT rating, COUNT(*) AS total_titles
FROM netflix
GROUP BY rating
ORDER BY total_titles DESC;
