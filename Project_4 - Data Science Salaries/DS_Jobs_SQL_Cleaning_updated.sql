CREATE DATABASE personal_project;
USE personal_project;

---- View Imported Dataset
SELECT *
FROM ds_jobs;

---- Create a Copy of the Data
SELECT * 
INTO ds_jobs_copy
FROM ds_jobs

SELECT *
FROM ds_jobs_copy;

---- VIEWS
CREATE VIEW ds_jobs_view AS
SELECT *
FROM ds_jobs;

SELECT *
FROM ds_jobs_view;

---- DATA CLEANING
---- Removing duplicates

SELECT DISTINCT*
FROM ds_jobs;

---- Updating

WITH jobs_cte AS (
SELECT *, ROW_NUMBER()
          OVER (PARTITION BY
		  work_year,
		  experience_level,
		  employment_type,
		  job_title,
		  salary,
		  salary_currency,
		  salary_in_usd,
		  employee_residence,
		  remote_ratio,
		  company_location,
		  company_size
		  ORDER BY work_year) AS row_num
FROM ds_jobs)

DELETE FROM jobs_cte
WHERE row_num > 1;

---- UPDATING COLUMNS
---- Experience level

SELECT DISTINCT(experience_level)
FROM ds_jobs;

UPDATE ds_jobs
SET experience_level = 'Entry Level'
WHERE experience_level = 'EN';

UPDATE ds_jobs
SET experience_level = 'Mid Level'
WHERE experience_level = 'MI';

UPDATE ds_jobs
SET experience_level = 'Executive Level'
WHERE experience_level = 'EX';

UPDATE ds_jobs
SET experience_level = 'Senior Level'
WHERE experience_level = 'SE';

---- Employment Type
SELECT DISTINCT(employment_type)
FROM ds_jobs;

UPDATE ds_jobs
SET employment_type = 'Contract'
WHERE employment_type = 'CT';

UPDATE ds_jobs
SET employment_type = 'Freelance'
WHERE employment_type = 'FL';

UPDATE ds_jobs
SET employment_type = 'Part Time'
WHERE employment_type = 'PT';

UPDATE ds_jobs
SET employment_type = 'Full Time'
WHERE employment_type = 'FT';

---- Job Title
SELECT DISTINCT(job_title)
FROM ds_jobs
ORDER BY job_title;

UPDATE ds_jobs
SET job_title = 'Financial Data Analyst'
WHERE job_title LIKE 'Finance%';

UPDATE ds_jobs
SET job_title = 'Machine Learning Engineer'
WHERE job_title = 'ML Engineer';

UPDATE ds_jobs
SET job_title = 'Lead Data Analyst'
WHERE job_title = 'Data Analytics Lead';

UPDATE ds_jobs
SET job_title = 'Lead Data Scientist'
WHERE job_title IN ('Data Science Lead', 'Data Scientist Lead');

---- Employee Residence
SELECT DISTINCT(employee_residence)
FROM ds_jobs
ORDER BY employee_residence;

UPDATE ds_jobs
SET employee_residence = 'United Arab Emirates'
WHERE employee_residence = 'AE';

UPDATE ds_jobs
SET employee_residence = 'Albania'
WHERE employee_residence = 'AL';

UPDATE ds_jobs
SET employee_residence = 'Armenia'
WHERE employee_residence = 'AM';

UPDATE ds_jobs
SET employee_residence = 'Argentina'
WHERE employee_residence = 'AR';

UPDATE ds_jobs
SET employee_residence = 'American Samoa'
WHERE employee_residence = 'AS';

UPDATE ds_jobs
SET employee_residence = 'Austria'
WHERE employee_residence = 'AT';

UPDATE ds_jobs
SET employee_residence = 'Australia'
WHERE employee_residence = 'AU';

UPDATE ds_jobs
SET employee_residence = 'Bosnia and Herzegovina'
WHERE employee_residence = 'BA';

UPDATE ds_jobs
SET employee_residence = 'Belgium'
WHERE employee_residence = 'BE';

UPDATE ds_jobs
SET employee_residence = 'Bulgaria'
WHERE employee_residence = 'BG';

UPDATE ds_jobs
SET employee_residence = 'Bolivia'
WHERE employee_residence = 'BO';

UPDATE ds_jobs
SET employee_residence = 'Brazil'
WHERE employee_residence = 'BR';

UPDATE ds_jobs
SET employee_residence = 'Canada'
WHERE employee_residence = 'CA';

UPDATE ds_jobs
SET employee_residence = 'Central African Republic'
WHERE employee_residence = 'CF';

UPDATE ds_jobs
SET employee_residence = 'Switzerland'
WHERE employee_residence = 'CH';

UPDATE ds_jobs
SET employee_residence = 'Chile'
WHERE employee_residence = 'CL';

UPDATE ds_jobs
SET employee_residence = 'China'
WHERE employee_residence = 'CN';

UPDATE ds_jobs
SET employee_residence = 'Colombia'
WHERE employee_residence = 'CO';

UPDATE ds_jobs
SET employee_residence = 'Costa Rica'
WHERE employee_residence = 'CR';

UPDATE ds_jobs
SET employee_residence = 'Cyprus'
WHERE employee_residence = 'CY';

UPDATE ds_jobs
SET employee_residence = 'Czech Republic'
WHERE employee_residence = 'CZ';

UPDATE ds_jobs
SET employee_residence = 'Germany'
WHERE employee_residence = 'DE';

UPDATE ds_jobs
SET employee_residence = 'Denmark'
WHERE employee_residence = 'DK';

UPDATE ds_jobs
SET employee_residence = 'Dominican Republic'
WHERE employee_residence = 'DO';

UPDATE ds_jobs
SET employee_residence = 'Algeria'
WHERE employee_residence = 'DZ';

UPDATE ds_jobs
SET employee_residence = 'Estonia'
WHERE employee_residence = 'EE';

UPDATE ds_jobs
SET employee_residence = 'Egypt'
WHERE employee_residence = 'EG';

UPDATE ds_jobs
SET employee_residence = 'Spain'
WHERE employee_residence = 'ES';

UPDATE ds_jobs
SET employee_residence = 'Finland'
WHERE employee_residence = 'FI';

UPDATE ds_jobs
SET employee_residence = 'France'
WHERE employee_residence = 'FR';

UPDATE ds_jobs
SET employee_residence = 'United Kingdom'
WHERE employee_residence = 'GB';

UPDATE ds_jobs
SET employee_residence = 'Ghana'
WHERE employee_residence = 'GH';

UPDATE ds_jobs
SET employee_residence = 'Greece'
WHERE employee_residence = 'GR';

UPDATE ds_jobs
SET employee_residence = 'Hong Kong'
WHERE employee_residence = 'HK';

UPDATE ds_jobs
SET employee_residence = 'Honduras'
WHERE employee_residence = 'HN';

UPDATE ds_jobs
SET employee_residence = 'Croatia'
WHERE employee_residence = 'HR';

UPDATE ds_jobs
SET employee_residence = 'Hungary'
WHERE employee_residence = 'HU';

UPDATE ds_jobs
SET employee_residence = 'Indonesia'
WHERE employee_residence = 'ID';

UPDATE ds_jobs
SET employee_residence = 'Ireland'
WHERE employee_residence = 'IE';

UPDATE ds_jobs
SET employee_residence = 'Israel'
WHERE employee_residence = 'IL';

UPDATE ds_jobs
SET employee_residence = 'India'
WHERE employee_residence = 'IN';

UPDATE ds_jobs
SET employee_residence = 'Iraq'
WHERE employee_residence = 'IQ';

UPDATE ds_jobs
SET employee_residence = 'Iran'
WHERE employee_residence = 'IR';

UPDATE ds_jobs
SET employee_residence = 'Italy'
WHERE employee_residence = 'IT';

UPDATE ds_jobs
SET employee_residence = 'Jersey'
WHERE employee_residence = 'JE';

UPDATE ds_jobs
SET employee_residence = 'Japan'
WHERE employee_residence = 'JP';

UPDATE ds_jobs
SET employee_residence = 'Kenya'
WHERE employee_residence = 'KE';

UPDATE ds_jobs
SET employee_residence = 'Kuwait'
WHERE employee_residence = 'KW';

UPDATE ds_jobs
SET employee_residence = 'Lithuania'
WHERE employee_residence = 'LT';

UPDATE ds_jobs
SET employee_residence = 'Luxembourg'
WHERE employee_residence = 'LU';

UPDATE ds_jobs
SET employee_residence = 'Latvia'
WHERE employee_residence = 'LV';

UPDATE ds_jobs
SET employee_residence = 'Morocco'
WHERE employee_residence = 'MA';

UPDATE ds_jobs
SET employee_residence = 'Moldova'
WHERE employee_residence = 'MD';

UPDATE ds_jobs
SET employee_residence = 'Macedonia'
WHERE employee_residence = 'MK';

UPDATE ds_jobs
SET employee_residence = 'Malta'
WHERE employee_residence = 'MT';

UPDATE ds_jobs
SET employee_residence = 'Mexico'
WHERE employee_residence = 'MX';

UPDATE ds_jobs
SET employee_residence = 'Malaysia'
WHERE employee_residence = 'MY';

UPDATE ds_jobs
SET employee_residence = 'Nigeria'
WHERE employee_residence = 'NG';

UPDATE ds_jobs
SET employee_residence = 'Netherlands'
WHERE employee_residence = 'NL';

UPDATE ds_jobs
SET employee_residence = 'New Zealand'
WHERE employee_residence = 'NZ';

UPDATE ds_jobs
SET employee_residence = 'Philippines'
WHERE employee_residence = 'PH';

UPDATE ds_jobs
SET employee_residence = 'Pakistan'
WHERE employee_residence = 'PK';

UPDATE ds_jobs
SET employee_residence = 'Poland'
WHERE employee_residence = 'PL';

UPDATE ds_jobs
SET employee_residence = 'Puerto Rico'
WHERE employee_residence = 'PR';

UPDATE ds_jobs
SET employee_residence = 'Portugal'
WHERE employee_residence = 'PT';

UPDATE ds_jobs
SET employee_residence = 'Romania'
WHERE employee_residence = 'RO';

UPDATE ds_jobs
SET employee_residence = 'Serbia'
WHERE employee_residence = 'RS';

UPDATE ds_jobs
SET employee_residence = 'Russian Federation'
WHERE employee_residence = 'RU';

UPDATE ds_jobs
SET employee_residence = 'Sweden'
WHERE employee_residence = 'SE';

UPDATE ds_jobs
SET employee_residence = 'Singapore'
WHERE employee_residence = 'SG';

UPDATE ds_jobs
SET employee_residence = 'Slovenia'
WHERE employee_residence = 'SI';

UPDATE ds_jobs
SET employee_residence = 'Slovakia'
WHERE employee_residence = 'SK';

UPDATE ds_jobs
SET employee_residence = 'Thailand'
WHERE employee_residence = 'TH';

UPDATE ds_jobs
SET employee_residence = 'Tunisia'
WHERE employee_residence = 'TN';

UPDATE ds_jobs
SET employee_residence = 'Turkey'
WHERE employee_residence = 'TR';

UPDATE ds_jobs
SET employee_residence = 'Ukraine'
WHERE employee_residence = 'UA';

UPDATE ds_jobs
SET employee_residence = 'United States of America'
WHERE employee_residence = 'US';

UPDATE ds_jobs
SET employee_residence = 'Uzbekistan'
WHERE employee_residence = 'UZ';

UPDATE ds_jobs
SET employee_residence = 'Vietnam'
WHERE employee_residence = 'VN';

---- Company Location
SELECT DISTINCT(company_location)
FROM ds_jobs
ORDER BY company_location;

UPDATE ds_jobs
SET company_location = 'United Arab Emirates'
WHERE company_location = 'AE';

UPDATE ds_jobs
SET company_location = 'Albania'
WHERE company_location = 'AL';

UPDATE ds_jobs
SET company_location = 'Armenia'
WHERE company_location = 'AM';

UPDATE ds_jobs
SET company_location = 'Argentina'
WHERE company_location = 'AR';

UPDATE ds_jobs
SET company_location = 'American Samoa'
WHERE company_location = 'AS';

UPDATE ds_jobs
SET company_location = 'Austria'
WHERE company_location = 'AT';

UPDATE ds_jobs
SET company_location = 'Australia'
WHERE company_location = 'AU';

UPDATE ds_jobs
SET company_location = 'Bosnia and Herzegovina'
WHERE company_location = 'BA';

UPDATE ds_jobs
SET company_location = 'Belgium'
WHERE company_location = 'BE';

UPDATE ds_jobs
SET company_location = 'Bulgaria'
WHERE company_location = 'BG';

UPDATE ds_jobs
SET company_location = 'Bolivia'
WHERE company_location = 'BO';

UPDATE ds_jobs
SET company_location = 'Brazil'
WHERE company_location = 'BR';

UPDATE ds_jobs
SET company_location = 'Bahamas'
WHERE company_location = 'BS';

UPDATE ds_jobs
SET company_location = 'Canada'
WHERE company_location = 'CA';

UPDATE ds_jobs
SET company_location = 'Central African Republic'
WHERE company_location = 'CF';

UPDATE ds_jobs
SET company_location = 'Switzerland'
WHERE company_location = 'CH';

UPDATE ds_jobs
SET company_location = 'Chile'
WHERE company_location = 'CL';

UPDATE ds_jobs
SET company_location = 'China'
WHERE company_location = 'CN';

UPDATE ds_jobs
SET company_location = 'Colombia'
WHERE company_location = 'CO';

UPDATE ds_jobs
SET company_location = 'Costa Rica'
WHERE company_location = 'CR';

UPDATE ds_jobs
SET company_location = 'Cyprus'
WHERE company_location = 'CY';

UPDATE ds_jobs
SET company_location = 'Czech Republic'
WHERE company_location = 'CZ';

UPDATE ds_jobs
SET company_location = 'Germany'
WHERE company_location = 'DE';

UPDATE ds_jobs
SET company_location = 'Denmark'
WHERE company_location = 'DK';

UPDATE ds_jobs
SET company_location = 'Dominican Republic'
WHERE company_location = 'DO';

UPDATE ds_jobs
SET company_location = 'Algeria'
WHERE company_location = 'DZ';

UPDATE ds_jobs
SET company_location = 'Estonia'
WHERE company_location = 'EE';

UPDATE ds_jobs
SET company_location = 'Egypt'
WHERE company_location = 'EG';

UPDATE ds_jobs
SET company_location = 'Spain'
WHERE company_location = 'ES';

UPDATE ds_jobs
SET company_location = 'Finland'
WHERE company_location = 'FI';

UPDATE ds_jobs
SET company_location = 'France'
WHERE company_location = 'FR';

UPDATE ds_jobs
SET company_location = 'United Kingdom'
WHERE company_location = 'GB';

UPDATE ds_jobs
SET company_location = 'Ghana'
WHERE company_location = 'GH';

UPDATE ds_jobs
SET company_location = 'Greece'
WHERE company_location = 'GR';

UPDATE ds_jobs
SET company_location = 'Hong Kong'
WHERE company_location = 'HK';

UPDATE ds_jobs
SET company_location = 'Honduras'
WHERE company_location = 'HN';

UPDATE ds_jobs
SET company_location = 'Croatia'
WHERE company_location = 'HR';

UPDATE ds_jobs
SET company_location = 'Hungary'
WHERE company_location = 'HU';

UPDATE ds_jobs
SET company_location = 'Indonesia'
WHERE company_location = 'ID';

UPDATE ds_jobs
SET company_location = 'Ireland'
WHERE company_location = 'IE';

UPDATE ds_jobs
SET company_location = 'Israel'
WHERE company_location = 'IL';

UPDATE ds_jobs
SET company_location = 'India'
WHERE company_location = 'IN';

UPDATE ds_jobs
SET company_location = 'Iraq'
WHERE company_location = 'IQ';

UPDATE ds_jobs
SET company_location = 'Iran'
WHERE company_location = 'IR';

UPDATE ds_jobs
SET company_location = 'Italy'
WHERE company_location = 'IT';

UPDATE ds_jobs
SET company_location = 'Jersey'
WHERE company_location = 'JE';

UPDATE ds_jobs
SET company_location = 'Japan'
WHERE company_location = 'JP';

UPDATE ds_jobs
SET company_location = 'Kenya'
WHERE company_location = 'KE';

UPDATE ds_jobs
SET company_location = 'Kuwait'
WHERE company_location = 'KW';

UPDATE ds_jobs
SET company_location = 'Lithuania'
WHERE company_location = 'LT';

UPDATE ds_jobs
SET company_location = 'Luxembourg'
WHERE company_location = 'LU';

UPDATE ds_jobs
SET company_location = 'Latvia'
WHERE company_location = 'LV';

UPDATE ds_jobs
SET company_location = 'Morocco'
WHERE company_location = 'MA';

UPDATE ds_jobs
SET company_location = 'Moldova'
WHERE company_location = 'MD';

UPDATE ds_jobs
SET company_location = 'Macedonia'
WHERE company_location = 'MK';

UPDATE ds_jobs
SET company_location = 'Malta'
WHERE company_location = 'MT';

UPDATE ds_jobs
SET company_location = 'Mexico'
WHERE company_location = 'MX';

UPDATE ds_jobs
SET company_location = 'Malaysia'
WHERE company_location = 'MY';

UPDATE ds_jobs
SET company_location = 'Nigeria'
WHERE company_location = 'NG';

UPDATE ds_jobs
SET company_location = 'Netherlands'
WHERE company_location = 'NL';

UPDATE ds_jobs
SET company_location = 'New Zealand'
WHERE company_location = 'NZ';

UPDATE ds_jobs
SET company_location = 'Philippines'
WHERE company_location = 'PH';

UPDATE ds_jobs
SET company_location = 'Pakistan'
WHERE company_location = 'PK';

UPDATE ds_jobs
SET company_location = 'Poland'
WHERE company_location = 'PL';

UPDATE ds_jobs
SET company_location = 'Puerto Rico'
WHERE company_location = 'PR';

UPDATE ds_jobs
SET company_location = 'Portugal'
WHERE company_location = 'PT';

UPDATE ds_jobs
SET company_location = 'Romania'
WHERE company_location = 'RO';

UPDATE ds_jobs
SET company_location = 'Serbia'
WHERE company_location = 'RS';

UPDATE ds_jobs
SET company_location = 'Russian Federation'
WHERE company_location = 'RU';

UPDATE ds_jobs
SET company_location = 'Sweden'
WHERE company_location = 'SE';

UPDATE ds_jobs
SET company_location = 'Singapore'
WHERE company_location = 'SG';

UPDATE ds_jobs
SET company_location = 'Slovenia'
WHERE company_location = 'SI';

UPDATE ds_jobs
SET company_location = 'Slovakia'
WHERE company_location = 'SK';

UPDATE ds_jobs
SET company_location = 'Thailand'
WHERE company_location = 'TH';

UPDATE ds_jobs
SET company_location = 'Tunisia'
WHERE company_location = 'TN';

UPDATE ds_jobs
SET company_location = 'Turkey'
WHERE company_location = 'TR';

UPDATE ds_jobs
SET company_location = 'Ukraine'
WHERE company_location = 'UA';

UPDATE ds_jobs
SET company_location = 'United States of America'
WHERE company_location = 'US';

UPDATE ds_jobs
SET company_location = 'Uzbekistan'
WHERE company_location = 'UZ';

UPDATE ds_jobs
SET company_location = 'Vietnam'
WHERE company_location = 'VN';

---- Company Size
SELECT DISTINCT(company_size)
FROM ds_jobs
ORDER BY company_size;

UPDATE ds_jobs
SET company_size = 'Large'
WHERE company_size = 'L';

UPDATE ds_jobs
SET company_size = 'Medium'
WHERE company_size = 'M';

UPDATE ds_jobs
SET company_size = 'Small'
WHERE company_size = 'S';

---- Create new table for remote ratio
ALTER TABLE ds_jobs
ADD remote_classification varchar(255);

SELECT DISTINCT(remote_ratio), remote_classification
FROM ds_jobs
ORDER BY remote_ratio;

UPDATE ds_jobs
SET remote_classification = 'Onsite'
WHERE remote_ratio = 0;

UPDATE ds_jobs
SET remote_classification = 'Hybrid'
WHERE remote_ratio = 50;

UPDATE ds_jobs
SET remote_classification = 'Full Remote'
WHERE remote_ratio = 100;

---- Continent of location company
ALTER TABLE ds_jobs
ADD continent varchar(255);

SELECT DISTINCT(company_location), continent
FROM ds_jobs
ORDER BY company_location;

UPDATE ds_jobs
SET continent = 'Africa'
WHERE company_location IN ('Nigeria', 'Morocco', 'Kenya', 'Ghana', 'Algeria', 'Central African Republic', 'Egypt');

UPDATE ds_jobs
SET continent = 'Asia'
WHERE company_location IN ('Vietnam', 'United Arab Emirates', 'Thailand', 'Singapore', 'Philippines', 'Pakistan', 'Malaysia', 'Japan', 'Israel', 'Iraq', 'Iran', 'Indonesia', 'India', 'Hong Kong', 'Armenia', 'China');

UPDATE ds_jobs
SET continent = 'Australia/Oceania'
WHERE company_location IN ('New Zealand', 'American Samoa', 'Australia');

UPDATE ds_jobs
SET continent = 'Europe'
WHERE company_location IN ('United Kingdom', 'Ukraine', 'Turkey', 'Switzerland', 'Sweden', 'Spain', 'Slovenia', 'Slovakia', 'Russian Federation', 'Romania', 'Portugal', 'Poland', 'Netherlands', 'Moldova', 'Malta', 'Macedonia', 'Luxembourg', 'Lithuania', 'Latvia', 'Italy', 'Ireland', 'Hungary', 'Greece', 'Germany', 'France', 'Finland', 'Estonia', 'Albania', 'Austria', 'Belgium', 'Bosnia and Herzegovina', 'Croatia', 'Czech Republic', 'Denmark');

UPDATE ds_jobs
SET continent = 'North America'
WHERE company_location IN ('United States of America', 'Puerto Rico', 'Mexico', 'Honduras', 'Bahamas', 'Canada', 'Costa Rica');

UPDATE ds_jobs
SET continent = 'South America'
WHERE company_location IN ('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia');

---- Change datatypes for both salary and salary in USD column
SELECT salary, salary_in_usd
FROM ds_jobs;

ALTER TABLE ds_jobs
ALTER COLUMN salary DECIMAL(10, 2);

ALTER TABLE ds_jobs
ALTER COLUMN salary_in_usd DECIMAL(10, 2)

---- CLEANED DATA
SELECT *
FROM ds_jobs;