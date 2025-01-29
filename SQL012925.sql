----------1
SELECT COUNT (*)
FROM data_analyst_jobs

-----------2

SELECT *
FROM data_analyst_jobs
LIMIT 10;

-----------3

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN';

-----------4

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN' 
AND star_rating > 4;

---------5

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000

---------6

SELECT AVG(star_rating) AS average_rating, location AS state
FROM data_analyst_jobs
GROUP BY location
ORDER BY AVG(star_rating) desc

---------7

SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs

--------8


SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';

-------9

SELECT DISTINCT company
FROM data_analyst_jobs
WHERE review_count > 5000;
--
SELECT COUNT(DISTINCT company)
FROM data_analyst_jobs
WHERE review count > 5000;

--

SELECT AVG(star_rating), company
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY AVG(star_rating);

-----------10

SELECT AVG(star_rating), company
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY AVG(star_rating);
--------11

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title iLIKE '%analyst%';

-----------12

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title NOT iLIKE '%analyst%'
	AND title NOT iLIKE '&analytics%';
-----

SELECT title
FROM data_analyst_jobs
WHERE title NOT iLIKE '%Analyst%'
AND title NOT iLIKE '%Analytics%';


-------Bonus

SELECT domain AS industry, COUNT(title) AS hard_to_fill
FROM data_analyst_jobs
WHERE skill iLIKE '%SQL%'
	AND days_since_posting > 21
	AND domain IS NOT NULL 
GROUP BY domain
ORDER BY COUNT(domain) desc
LIMIT 4;
----------------------

