CREATE DATABASE Personal_Project;

USE Personal_Project;

DROP DATABASE Personal_Project;

-- Import CSV local file to SQL server

---- Profile data ----

SELECT *
FROM Bike_User;

---- Data cleaning ----

-- Remove duplicates

WITH BikeCTE AS (
SELECT *, 
       ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID) AS Tally
FROM Bike_User)

DELETE FROM BikeCTE
WHERE Tally > 1;

-- Gender column

SELECT Gender
FROM Bike_User;

UPDATE Bike_User
SET Gender = 'Male'
WHERE Gender = 'M';

UPDATE Bike_User
SET Gender = 'Female'
WHERE Gender = 'F';

-- Marital status column

SELECT Marital_Status
FROM Bike_User;

UPDATE Bike_User
SET Marital_Status = 'Married'
WHERE Marital_Status = 'M';

UPDATE Bike_User
SET Marital_Status = 'Single'
WHERE Marital_Status = 'S';

---- Cleaned data ----

SELECT *
FROM Bike_User;

---- Explore data ----

-- Count of bike buyers

SELECT COUNT(ID) AS Tally
FROM Bike_User;

SELECT Region, 
       COUNT(ID) AS 'Purchased'
FROM Bike_User
WHERE Purchased_Bike = 'Yes'
GROUP BY Region;

SELECT Region, 
       COUNT(ID) AS 'Did Not Purchased'
FROM Bike_User
WHERE Purchased_Bike = 'No'
GROUP BY Region;

-- Income average by their occupation

SELECT Occupation,
       ROUND(AVG(Income), 3) AS 'Average Income'
FROM Bike_User
GROUP BY Occupation
ORDER BY ROUND(AVG(Income), 3);

-- Income average by their age

SELECT Age,
       ROUND(AVG(Income), 3) AS 'Average Income'
FROM Bike_User
GROUP BY Age
ORDER BY Age;