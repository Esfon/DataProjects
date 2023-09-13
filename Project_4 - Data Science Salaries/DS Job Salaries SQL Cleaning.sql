USE Personal_Project;

SELECT *
FROM Salaries;

---- DATA CLEANING
---- Removing duplicates

SELECT DISTINCT*
FROM Salaries;

---- Updating

WITH SalaryCTE AS (
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
		  ORDER BY work_year) AS Row_Num
FROM Salaries)

DELETE FROM SalaryCTE
WHERE Row_Num > 1;

---- UPDATING COLUMNS
---- Experience level

SELECT DISTINCT(experience_level)
FROM Salaries;

UPDATE Salaries
SET experience_level = 'Entry Level'
WHERE experience_level = 'EN';

UPDATE Salaries
SET experience_level = 'Mid Level'
WHERE experience_level = 'MI';

UPDATE Salaries
SET experience_level = 'Executive Level'
WHERE experience_level = 'EX';

UPDATE Salaries
SET experience_level = 'Senior Level'
WHERE experience_level = 'SE';

---- Employment Type
SELECT DISTINCT(employment_type)
FROM Salaries;

UPDATE Salaries
SET employment_type = 'Contract'
WHERE employment_type = 'CT';

UPDATE Salaries
SET employment_type = 'Freelance'
WHERE employment_type = 'FL';

UPDATE Salaries
SET employment_type = 'Part Time'
WHERE employment_type = 'PT';

UPDATE Salaries
SET employment_type = 'Full Time'
WHERE employment_type = 'FT';

---- Job Title
SELECT DISTINCT(job_title)
FROM Salaries
ORDER BY job_title;

UPDATE Salaries
SET job_title = 'Financial Data Analyst'
WHERE job_title LIKE 'Finance%';

UPDATE Salaries
SET job_title = 'Head of Data Science'
WHERE job_title = 'Head of Data';

---- Employee Residence
SELECT DISTINCT(employee_residence)
FROM Salaries
ORDER BY employee_residence;

UPDATE Salaries
SET employee_residence = 'United Arab Emirates'
WHERE employee_residence = 'AE';

UPDATE Salaries
SET employee_residence = 'Albania'
WHERE employee_residence = 'AL';

UPDATE Salaries
SET employee_residence = 'Armenia'
WHERE employee_residence = 'AM';

UPDATE Salaries
SET employee_residence = 'Argentina'
WHERE employee_residence = 'AR';

UPDATE Salaries
SET employee_residence = 'American Samoa'
WHERE employee_residence = 'AS';

UPDATE Salaries
SET employee_residence = 'Austria'
WHERE employee_residence = 'AT';

UPDATE Salaries
SET employee_residence = 'Australia'
WHERE employee_residence = 'AU';

UPDATE Salaries
SET employee_residence = 'Bosnia and Herzegovina'
WHERE employee_residence = 'BA';

UPDATE Salaries
SET employee_residence = 'Belgium'
WHERE employee_residence = 'BE';

UPDATE Salaries
SET employee_residence = 'Bulgaria'
WHERE employee_residence = 'BG';

UPDATE Salaries
SET employee_residence = 'Bolivia'
WHERE employee_residence = 'BO';

UPDATE Salaries
SET employee_residence = 'Brazil'
WHERE employee_residence = 'BR';

UPDATE Salaries
SET employee_residence = 'Canada'
WHERE employee_residence = 'CA';

UPDATE Salaries
SET employee_residence = 'Central African Republic'
WHERE employee_residence = 'CF';

UPDATE Salaries
SET employee_residence = 'Switzerland'
WHERE employee_residence = 'CH';

UPDATE Salaries
SET employee_residence = 'Chile'
WHERE employee_residence = 'CL';

UPDATE Salaries
SET employee_residence = 'China'
WHERE employee_residence = 'CN';

UPDATE Salaries
SET employee_residence = 'Colombia'
WHERE employee_residence = 'CO';

UPDATE Salaries
SET employee_residence = 'Costa Rica'
WHERE employee_residence = 'CR';

UPDATE Salaries
SET employee_residence = 'Cyprus'
WHERE employee_residence = 'CY';

UPDATE Salaries
SET employee_residence = 'Czech Republic'
WHERE employee_residence = 'CZ';

UPDATE Salaries
SET employee_residence = 'Germany'
WHERE employee_residence = 'DE';

UPDATE Salaries
SET employee_residence = 'Denmark'
WHERE employee_residence = 'DK';

UPDATE Salaries
SET employee_residence = 'Dominican Republic'
WHERE employee_residence = 'DO';

UPDATE Salaries
SET employee_residence = 'Algeria'
WHERE employee_residence = 'DZ';

UPDATE Salaries
SET employee_residence = 'Estonia'
WHERE employee_residence = 'EE';

UPDATE Salaries
SET employee_residence = 'Egypt'
WHERE employee_residence = 'EG';

UPDATE Salaries
SET employee_residence = 'Spain'
WHERE employee_residence = 'ES';

UPDATE Salaries
SET employee_residence = 'Finland'
WHERE employee_residence = 'FI';

UPDATE Salaries
SET employee_residence = 'France'
WHERE employee_residence = 'FR';

UPDATE Salaries
SET employee_residence = 'United Kingdom'
WHERE employee_residence = 'GB';

UPDATE Salaries
SET employee_residence = 'Ghana'
WHERE employee_residence = 'GH';

UPDATE Salaries
SET employee_residence = 'Greece'
WHERE employee_residence = 'GR';

UPDATE Salaries
SET employee_residence = 'Hong Kong'
WHERE employee_residence = 'HK';

UPDATE Salaries
SET employee_residence = 'Honduras'
WHERE employee_residence = 'HN';

UPDATE Salaries
SET employee_residence = 'Croatia'
WHERE employee_residence = 'HR';

UPDATE Salaries
SET employee_residence = 'Hungary'
WHERE employee_residence = 'HU';

UPDATE Salaries
SET employee_residence = 'Indonesia'
WHERE employee_residence = 'ID';

UPDATE Salaries
SET employee_residence = 'Ireland'
WHERE employee_residence = 'IE';

UPDATE Salaries
SET employee_residence = 'Israel'
WHERE employee_residence = 'IL';

UPDATE Salaries
SET employee_residence = 'India'
WHERE employee_residence = 'IN';

UPDATE Salaries
SET employee_residence = 'Iraq'
WHERE employee_residence = 'IQ';

UPDATE Salaries
SET employee_residence = 'Iran'
WHERE employee_residence = 'IR';

UPDATE Salaries
SET employee_residence = 'Italy'
WHERE employee_residence = 'IT';

UPDATE Salaries
SET employee_residence = 'Jersey'
WHERE employee_residence = 'JE';

UPDATE Salaries
SET employee_residence = 'Japan'
WHERE employee_residence = 'JP';

UPDATE Salaries
SET employee_residence = 'Kenya'
WHERE employee_residence = 'KE';

UPDATE Salaries
SET employee_residence = 'Kuwait'
WHERE employee_residence = 'KW';

UPDATE Salaries
SET employee_residence = 'Lithuania'
WHERE employee_residence = 'LT';

UPDATE Salaries
SET employee_residence = 'Luxembourg'
WHERE employee_residence = 'LU';

UPDATE Salaries
SET employee_residence = 'Latvia'
WHERE employee_residence = 'LV';

UPDATE Salaries
SET employee_residence = 'Morocco'
WHERE employee_residence = 'MA';

UPDATE Salaries
SET employee_residence = 'Moldova'
WHERE employee_residence = 'MD';

UPDATE Salaries
SET employee_residence = 'Macedonia'
WHERE employee_residence = 'MK';

UPDATE Salaries
SET employee_residence = 'Malta'
WHERE employee_residence = 'MT';

UPDATE Salaries
SET employee_residence = 'Mexico'
WHERE employee_residence = 'MX';

UPDATE Salaries
SET employee_residence = 'Malaysia'
WHERE employee_residence = 'MY';

UPDATE Salaries
SET employee_residence = 'Nigeria'
WHERE employee_residence = 'NG';

UPDATE Salaries
SET employee_residence = 'Netherlands'
WHERE employee_residence = 'NL';

UPDATE Salaries
SET employee_residence = 'New Zealand'
WHERE employee_residence = 'NZ';

UPDATE Salaries
SET employee_residence = 'Philippines'
WHERE employee_residence = 'PH';

UPDATE Salaries
SET employee_residence = 'Pakistan'
WHERE employee_residence = 'PK';

UPDATE Salaries
SET employee_residence = 'Poland'
WHERE employee_residence = 'PL';

UPDATE Salaries
SET employee_residence = 'Puerto Rico'
WHERE employee_residence = 'PR';

UPDATE Salaries
SET employee_residence = 'Portugal'
WHERE employee_residence = 'PT';

UPDATE Salaries
SET employee_residence = 'Romania'
WHERE employee_residence = 'RO';

UPDATE Salaries
SET employee_residence = 'Serbia'
WHERE employee_residence = 'RS';

UPDATE Salaries
SET employee_residence = 'Russian Federation'
WHERE employee_residence = 'RU';

UPDATE Salaries
SET employee_residence = 'Sweden'
WHERE employee_residence = 'SE';

UPDATE Salaries
SET employee_residence = 'Singapore'
WHERE employee_residence = 'SG';

UPDATE Salaries
SET employee_residence = 'Slovenia'
WHERE employee_residence = 'SI';

UPDATE Salaries
SET employee_residence = 'Slovakia'
WHERE employee_residence = 'SK';

UPDATE Salaries
SET employee_residence = 'Thailand'
WHERE employee_residence = 'TH';

UPDATE Salaries
SET employee_residence = 'Tunisia'
WHERE employee_residence = 'TN';

UPDATE Salaries
SET employee_residence = 'Turkey'
WHERE employee_residence = 'TR';

UPDATE Salaries
SET employee_residence = 'Ukraine'
WHERE employee_residence = 'UA';

UPDATE Salaries
SET employee_residence = 'United States of America'
WHERE employee_residence = 'US';

UPDATE Salaries
SET employee_residence = 'Uzbekistan'
WHERE employee_residence = 'UZ';

UPDATE Salaries
SET employee_residence = 'Vietnam'
WHERE employee_residence = 'VN';

---- Company Location
SELECT DISTINCT(company_location)
FROM Salaries
ORDER BY company_location;

UPDATE Salaries
SET company_location = 'United Arab Emirates'
WHERE company_location = 'AE';

UPDATE Salaries
SET company_location = 'Albania'
WHERE company_location = 'AL';

UPDATE Salaries
SET company_location = 'Armenia'
WHERE company_location = 'AM';

UPDATE Salaries
SET company_location = 'Argentina'
WHERE company_location = 'AR';

UPDATE Salaries
SET company_location = 'American Samoa'
WHERE company_location = 'AS';

UPDATE Salaries
SET company_location = 'Austria'
WHERE company_location = 'AT';

UPDATE Salaries
SET company_location = 'Australia'
WHERE company_location = 'AU';

UPDATE Salaries
SET company_location = 'Bosnia and Herzegovina'
WHERE company_location = 'BA';

UPDATE Salaries
SET company_location = 'Belgium'
WHERE company_location = 'BE';

UPDATE Salaries
SET company_location = 'Bulgaria'
WHERE company_location = 'BG';

UPDATE Salaries
SET company_location = 'Bolivia'
WHERE company_location = 'BO';

UPDATE Salaries
SET company_location = 'Brazil'
WHERE company_location = 'BR';

UPDATE Salaries
SET company_location = 'Bahamas'
WHERE company_location = 'BS';

UPDATE Salaries
SET company_location = 'Canada'
WHERE company_location = 'CA';

UPDATE Salaries
SET company_location = 'Central African Republic'
WHERE company_location = 'CF';

UPDATE Salaries
SET company_location = 'Switzerland'
WHERE company_location = 'CH';

UPDATE Salaries
SET company_location = 'Chile'
WHERE company_location = 'CL';

UPDATE Salaries
SET company_location = 'China'
WHERE company_location = 'CN';

UPDATE Salaries
SET company_location = 'Colombia'
WHERE company_location = 'CO';

UPDATE Salaries
SET company_location = 'Costa Rica'
WHERE company_location = 'CR';

UPDATE Salaries
SET company_location = 'Cyprus'
WHERE company_location = 'CY';

UPDATE Salaries
SET company_location = 'Czech Republic'
WHERE company_location = 'CZ';

UPDATE Salaries
SET company_location = 'Germany'
WHERE company_location = 'DE';

UPDATE Salaries
SET company_location = 'Denmark'
WHERE company_location = 'DK';

UPDATE Salaries
SET company_location = 'Dominican Republic'
WHERE company_location = 'DO';

UPDATE Salaries
SET company_location = 'Algeria'
WHERE company_location = 'DZ';

UPDATE Salaries
SET company_location = 'Estonia'
WHERE company_location = 'EE';

UPDATE Salaries
SET company_location = 'Egypt'
WHERE company_location = 'EG';

UPDATE Salaries
SET company_location = 'Spain'
WHERE company_location = 'ES';

UPDATE Salaries
SET company_location = 'Finland'
WHERE company_location = 'FI';

UPDATE Salaries
SET company_location = 'France'
WHERE company_location = 'FR';

UPDATE Salaries
SET company_location = 'United Kingdom'
WHERE company_location = 'GB';

UPDATE Salaries
SET company_location = 'Ghana'
WHERE company_location = 'GH';

UPDATE Salaries
SET company_location = 'Greece'
WHERE company_location = 'GR';

UPDATE Salaries
SET company_location = 'Hong Kong'
WHERE company_location = 'HK';

UPDATE Salaries
SET company_location = 'Honduras'
WHERE company_location = 'HN';

UPDATE Salaries
SET company_location = 'Croatia'
WHERE company_location = 'HR';

UPDATE Salaries
SET company_location = 'Hungary'
WHERE company_location = 'HU';

UPDATE Salaries
SET company_location = 'Indonesia'
WHERE company_location = 'ID';

UPDATE Salaries
SET company_location = 'Ireland'
WHERE company_location = 'IE';

UPDATE Salaries
SET company_location = 'Israel'
WHERE company_location = 'IL';

UPDATE Salaries
SET company_location = 'India'
WHERE company_location = 'IN';

UPDATE Salaries
SET company_location = 'Iraq'
WHERE company_location = 'IQ';

UPDATE Salaries
SET company_location = 'Iran'
WHERE company_location = 'IR';

UPDATE Salaries
SET company_location = 'Italy'
WHERE company_location = 'IT';

UPDATE Salaries
SET company_location = 'Jersey'
WHERE company_location = 'JE';

UPDATE Salaries
SET company_location = 'Japan'
WHERE company_location = 'JP';

UPDATE Salaries
SET company_location = 'Kenya'
WHERE company_location = 'KE';

UPDATE Salaries
SET company_location = 'Kuwait'
WHERE company_location = 'KW';

UPDATE Salaries
SET company_location = 'Lithuania'
WHERE company_location = 'LT';

UPDATE Salaries
SET company_location = 'Luxembourg'
WHERE company_location = 'LU';

UPDATE Salaries
SET company_location = 'Latvia'
WHERE company_location = 'LV';

UPDATE Salaries
SET company_location = 'Morocco'
WHERE company_location = 'MA';

UPDATE Salaries
SET company_location = 'Moldova'
WHERE company_location = 'MD';

UPDATE Salaries
SET company_location = 'Macedonia'
WHERE company_location = 'MK';

UPDATE Salaries
SET company_location = 'Malta'
WHERE company_location = 'MT';

UPDATE Salaries
SET company_location = 'Mexico'
WHERE company_location = 'MX';

UPDATE Salaries
SET company_location = 'Malaysia'
WHERE company_location = 'MY';

UPDATE Salaries
SET company_location = 'Nigeria'
WHERE company_location = 'NG';

UPDATE Salaries
SET company_location = 'Netherlands'
WHERE company_location = 'NL';

UPDATE Salaries
SET company_location = 'New Zealand'
WHERE company_location = 'NZ';

UPDATE Salaries
SET company_location = 'Philippines'
WHERE company_location = 'PH';

UPDATE Salaries
SET company_location = 'Pakistan'
WHERE company_location = 'PK';

UPDATE Salaries
SET company_location = 'Poland'
WHERE company_location = 'PL';

UPDATE Salaries
SET company_location = 'Puerto Rico'
WHERE company_location = 'PR';

UPDATE Salaries
SET company_location = 'Portugal'
WHERE company_location = 'PT';

UPDATE Salaries
SET company_location = 'Romania'
WHERE company_location = 'RO';

UPDATE Salaries
SET company_location = 'Serbia'
WHERE company_location = 'RS';

UPDATE Salaries
SET company_location = 'Russian Federation'
WHERE company_location = 'RU';

UPDATE Salaries
SET company_location = 'Sweden'
WHERE company_location = 'SE';

UPDATE Salaries
SET company_location = 'Singapore'
WHERE company_location = 'SG';

UPDATE Salaries
SET company_location = 'Slovenia'
WHERE company_location = 'SI';

UPDATE Salaries
SET company_location = 'Slovakia'
WHERE company_location = 'SK';

UPDATE Salaries
SET company_location = 'Thailand'
WHERE company_location = 'TH';

UPDATE Salaries
SET company_location = 'Tunisia'
WHERE company_location = 'TN';

UPDATE Salaries
SET company_location = 'Turkey'
WHERE company_location = 'TR';

UPDATE Salaries
SET company_location = 'Ukraine'
WHERE company_location = 'UA';

UPDATE Salaries
SET company_location = 'United States of America'
WHERE company_location = 'US';

UPDATE Salaries
SET company_location = 'Uzbekistan'
WHERE company_location = 'UZ';

UPDATE Salaries
SET company_location = 'Vietnam'
WHERE company_location = 'VN';

---- Company Size
SELECT DISTINCT(company_size)
FROM Salaries
ORDER BY company_size;

UPDATE Salaries
SET company_size = 'Large'
WHERE company_size = 'L';

UPDATE Salaries
SET company_size = 'Medium'
WHERE company_size = 'M';

UPDATE Salaries
SET company_size = 'Small'
WHERE company_size = 'S';

---- Create new table for remote ratio
ALTER TABLE Salaries
ADD Remote_Classification varchar(255);

SELECT DISTINCT(remote_ratio), Remote_Classification
FROM Salaries
ORDER BY remote_ratio;

UPDATE Salaries
SET Remote_Classification = 'Onsite'
WHERE remote_ratio = 0;

UPDATE Salaries
SET Remote_Classification = 'Hybrid'
WHERE remote_ratio = 50;

UPDATE Salaries
SET Remote_Classification = 'Full Remote'
WHERE remote_ratio = 100;

---- Continent of location company
ALTER TABLE Salaries
ADD continent varchar(255);

SELECT DISTINCT(company_location), continent
FROM Salaries
ORDER BY company_location;

UPDATE Salaries
SET continent = 'Africa'
WHERE company_location IN ('Nigeria', 'Morocco', 'Kenya', 'Ghana', 'Algeria', 'Central African Republic', 'Egypt');

UPDATE Salaries
SET continent = 'Asia'
WHERE company_location IN ('Vietnam', 'United Arab Emirates', 'Thailand', 'Singapore', 'Philippines', 'Pakistan', 'Malaysia', 'Japan', 'Israel', 'Iraq', 'Iran', 'Indonesia', 'India', 'Hong Kong', 'Armenia', 'China');

UPDATE Salaries
SET continent = 'Australia/Oceania'
WHERE company_location IN ('New Zealand', 'American Samoa', 'Australia');

UPDATE Salaries
SET continent = 'Europe'
WHERE company_location IN ('United Kingdom', 'Ukraine', 'Turkey', 'Switzerland', 'Sweden', 'Spain', 'Slovenia', 'Slovakia', 'Russian Federation', 'Romania', 'Portugal', 'Poland', 'Netherlands', 'Moldova', 'Malta', 'Macedonia', 'Luxembourg', 'Lithuania', 'Latvia', 'Italy', 'Ireland', 'Hungary', 'Greece', 'Germany', 'France', 'Finland', 'Estonia', 'Albania', 'Austria', 'Belgium', 'Bosnia and Herzegovina', 'Croatia', 'Czech Republic', 'Denmark');

UPDATE Salaries
SET continent = 'North America'
WHERE company_location IN ('United States of America', 'Puerto Rico', 'Mexico', 'Honduras', 'Bahamas', 'Canada', 'Costa Rica');

UPDATE Salaries
SET continent = 'South America'
WHERE company_location IN ('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia');

---- Change datatypes for both salary and salary in USD column
ALTER TABLE Salaries
ALTER COLUMN salary DECIMAL(10, 2);

ALTER TABLE Salaries
ALTER COLUMN salary_in_usd DECIMAL(10, 2)

---- CLEANED DATA
SELECT *
FROM Salaries;