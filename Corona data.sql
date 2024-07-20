create schema CORONA;
USE CORONA;
SHOW TABLES;
DESCRIBE CORONA_VIRUS;
SELECT * FROM CORONA_VIRUS;



-- To avoid any errors, check missing value / null value 
-- Q1. Write a code to check NULL values

SELECT * FROM CORONA_VIRUS 
WHERE COALESCE('Province', 'Country_Region','Latitude',	'Longitude', 'Date', 'Confirmed', 'Deaths',	'Recovered') IS NULL;

-- Q2. If NULL values are present, update them with zeros for all columns. 

-- Q3. check total number of rows

SELECT COUNT(*) AS total_rows
FROM CORONA_VIRUS;

-- Q4. Check what is start_date and end_date

SELECT DATE FROM CORONA_VIRUS;

SELECT MIN(date) AS START_DATE, MAX(date) AS END_DATE 
FROM CORONA_VIRUS;



-- Q5. Number of month present in dataset

SELECT COUNT(MONTH(DATE)) AS NUM_OF_MONTHS
FROM CORONA_VIRUS;



-- Q6. Find monthly average for confirmed, deaths, recovered

SELECT
  MONTH(date) AS month,
  AVG(confirmed) AS avg_confirmed,
  AVG(deaths) AS avg_deaths,
  AVG(recovered) AS avg_recovered
FROM corona_virus
GROUP BY  MONTH(date)
ORDER BY month;

-- Q7. Find most frequent value for confirmed, deaths, recovered each month 

-- Q8. Find minimum values for confirmed, deaths, recovered per year

-- Q9. Find maximum values of confirmed, deaths, recovered per year

-- Q10. The total number of case of confirmed, deaths, recovered each month

-- Q11. Check how corona virus spread out with respect to confirmed case
--      (Eg.: total confirmed cases, their average, variance & STDEV )

-- Q12. Check how corona virus spread out with respect to death case per month
--      (Eg.: total confirmed cases, their average, variance & STDEV )

-- Q13. Check how corona virus spread out with respect to recovered case
--      (Eg.: total confirmed cases, their average, variance & STDEV )

-- Q14. Find Country having highest number of the Confirmed case

-- Q15. Find Country having lowest number of the death case

-- Q16. Find top 5 countries having highest recovered case
