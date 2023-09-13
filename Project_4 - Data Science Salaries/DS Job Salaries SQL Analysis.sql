USE Personal_Project;

SELECT *
FROM Salaries;

---- EXPLORATORY DATA ANALYSIS

---- Compute the sum and average salary in USD located in the Philippines
SELECT company_location, 
       COUNT(*) Tally, 
	   SUM(salary_in_usd) AS Total_sal, 
	   AVG(salary_in_usd) AS Avg_sal
FROM Salaries
WHERE company_location = 'Philippines'
GROUP BY company_location;

---- Average and sum of salaries in USD for each job title
SELECT job_title,
       SUM(salary_in_usd) AS Salary_total, 
	   ROUND(AVG(salary_in_usd), 2) AS Salary_avg
FROM Salaries
GROUP BY job_title
ORDER BY Salary_avg DESC;

---- How many records do not have the same location of the company as well as the employee residence?
SELECT COUNT(*)
FROM Salaries
WHERE company_location <> employee_residence;

---- How many countries are presented in each continent?
SELECT continent, 
       COUNT(DISTINCT company_location) AS number_of_distinct_countries
FROM Salaries
GROUP BY continent
ORDER BY number_of_distinct_countries DESC;

---- How many unique job titles are presented in each continent
SELECT continent, 
       COUNT(DISTINCT job_title) AS number_of_jobs
FROM Salaries
GROUP BY continent
ORDER BY number_of_jobs DESC;

---- Amount of the default currency decreases when converted into the US currency amount
SELECT DISTINCT SUM(salary) AS 'default_currency_val', 
                salary_currency, 
				SUM(salary_in_usd) AS 'us_currency_val'
FROM Salaries
WHERE salary > salary_in_usd
GROUP BY salary_currency
ORDER BY salary_currency;

---- What are the 5 highest paying jobs in USD for each continent?
SELECT job_title, continent
FROM Salaries
ORDER BY continent;

---- Africa
SELECT TOP 5 job_title, 
       ROUND(AVG(salary_in_usd), 2) AS us_amount
FROM Salaries
WHERE continent = 'Africa'
GROUP BY job_title
ORDER BY us_amount DESC;

---- Asia
SELECT TOP 5 job_title, 
       ROUND(AVG(salary_in_usd), 2) AS us_amount
FROM Salaries
WHERE continent = 'Asia'
GROUP BY job_title
ORDER BY us_amount DESC;

---- Australia/Oceania
SELECT TOP 5 job_title, 
       ROUND(AVG(salary_in_usd), 2) AS us_amount
FROM Salaries
WHERE continent = 'Australia/Oceania'
GROUP BY job_title
ORDER BY us_amount DESC;

---- Europe
SELECT TOP 5 job_title, 
       ROUND(AVG(salary_in_usd), 2) AS us_amount
FROM Salaries
WHERE continent = 'Europe'
GROUP BY job_title
ORDER BY us_amount DESC;

---- North America
SELECT TOP 5 job_title, 
       ROUND(AVG(salary_in_usd), 2) AS us_amount
FROM Salaries
WHERE continent = 'North America'
GROUP BY job_title
ORDER BY us_amount DESC;

---- South America
SELECT TOP 5 job_title, 
       ROUND(AVG(salary_in_usd), 2) AS us_amount
FROM Salaries
WHERE continent = 'South America'
GROUP BY job_title
ORDER BY us_amount DESC;

---- Average salary by experience level for each year
SELECT DISTINCT work_year
FROM Salaries
ORDER BY work_year;

---- 2020
SELECT experience_level,
       ROUND(AVG(salary_in_usd), 2) AS us_amount_2020
FROM Salaries
WHERE work_year = 2020
GROUP BY experience_level
ORDER BY us_amount_2020;

---- 2021
SELECT experience_level,
       ROUND(AVG(salary_in_usd), 2) AS us_amount_2021
FROM Salaries
WHERE work_year = 2021
GROUP BY experience_level
ORDER BY us_amount_2021;

---- 2022
SELECT experience_level,
       ROUND(AVG(salary_in_usd), 2) AS us_amount_2022
FROM Salaries
WHERE work_year = 2022
GROUP BY experience_level
ORDER BY us_amount_2022;

---- 2023
SELECT experience_level,
       ROUND(AVG(salary_in_usd), 2) AS us_amount_2023
FROM Salaries
WHERE work_year = 2023
GROUP BY experience_level
ORDER BY us_amount_2023;

---- Number of jobs by experience level for each year
---- 2020
SELECT experience_level, 
       COUNT(*) job_count_2020
FROM Salaries
WHERE work_year = '2020'
GROUP BY experience_level
ORDER BY job_count_2020 DESC;

---- 2021
SELECT experience_level, 
       COUNT(*) job_count_2021
FROM Salaries
WHERE work_year = '2021'
GROUP BY experience_level
ORDER BY job_count_2021 DESC;

---- 2022
SELECT experience_level, 
       COUNT(*) job_count_2022
FROM Salaries
WHERE work_year = '2022'
GROUP BY experience_level
ORDER BY job_count_2022 DESC;

---- 2023
SELECT experience_level, 
       COUNT(*) job_count_2023
FROM Salaries
WHERE work_year = '2023'
GROUP BY experience_level
ORDER BY job_count_2023 DESC;

----
WITH Salary_2 AS 
(SELECT company_size,
        COUNT(*) AS job_count
 FROM Salaries
 GROUP BY company_size)

SELECT company_size,
       job_count,
	   job_count * 100 / (SELECT SUM(job_count) FROM Salary_2) AS job_count_percentage
FROM Salary_2;