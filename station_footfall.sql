CREATE DATABASE Station_Footfall; 

USE Station_Footfall;

-- Create Tables, define data type and relationships, and load data into tables 

CREATE TABLE Stations (
	StationID INT NOT NULL PRIMARY KEY,
    Station_Name VARCHAR(100), 
    Zone VARCHAR(10)
    ); 

LOAD DATA LOCAL INFILE '/Users/teannaaa/Desktop/data/Projects/station footfall/stations_data.csv' 
	INTO TABLE Stations
		FIELDS TERMINATED BY ',' 
        LINES TERMINATED BY '\n' 
	IGNORE 1 LINES 
    (StationID, Station_Name, Zone); 

SET GLOBAL local_infile = true; 

SELECT * 
FROM Stations;    


CREATE TABLE Footfall ( 
	FootfallID INT NOT NULL PRIMARY KEY, 
    StationID INT NOT NULL, 
    Day_Of_Week VARCHAR(10), 
    Travel_Date DATE, 
    Entry_Tap_Count INT, 
    Exit_Tap_Count INT, 
    Total_Tap_Count INT, 
    FOREIGN KEY (StationID) REFERENCES Stations (StationID)
    ); 


LOAD DATA LOCAL INFILE '/Users/teannaaa/Desktop/data/Projects/station footfall/footfall_data.csv' 
	INTO TABLE Footfall
		FIELDS TERMINATED BY ',' 
        LINES TERMINATED BY '\n' 
	IGNORE 1 LINES 
    (FootfallID, StationID, Day_Of_Week, Travel_Date, Entry_Tap_Count, Exit_Tap_Count, Total_Tap_Count); 
    
    SELECT * 
FROM Footfall; 
    
-- Run queries to calculate metrics relevant to stakeholder driven questions

-- Which stations had the highest footfall in 2024? 

SELECT Station_Name, Zone,  SUM(Total_Tap_Count) AS Station_Footfall  
	FROM Stations s 
		INNER JOIN Footfall f ON s.StationID = f.StationID 
			WHERE Travel_Date LIKE '2024%' 
			GROUP BY Station_Name, Zone 
            ORDER BY Station_Footfall DESC
            LIMIT 5;  -- remove LIMIT to list all stations (Tableau analysis - visualisations filtered by zones) 
            
-- Which stations had the lowest footfall in 2024? 

SELECT Station_Name, Zone, SUM(Total_Tap_Count) AS Station_Footfall  
	FROM Stations s 
		INNER JOIN Footfall f ON s.StationID = f.StationID 
			WHERE Travel_Date LIKE '2024%' 
            GROUP BY Station_Name, Zone 
            ORDER BY Station_Footfall ASC 
            LIMIT 5; 
            
-- Which stations have had the highest footfall in 2025 so far?   

 SELECT Station_Name, Zone,  SUM(Total_Tap_Count) AS Station_Footfall  
	FROM Stations s 
		INNER JOIN Footfall f ON s.StationID = f.StationID 
			WHERE Travel_Date LIKE '2025%' 
			GROUP BY Station_Name, Zone 
            ORDER BY Station_Footfall DESC 
            LIMIT 5; 

-- Which stations have had the lowest footfall in 2025 so far?          

SELECT Station_Name, Zone, SUM(Total_Tap_Count) AS Station_Footfall  
	FROM Stations s 
		INNER JOIN Footfall f ON s.StationID = f.StationID 
			WHERE Travel_Date LIKE '2025%' 
            GROUP BY Station_Name, Zone 
            ORDER BY Station_Footfall ASC 
            LIMIT 5;
            
-- Which Zones generated the most footfall in 2024? 

SELECT Zone, SUM(Total_Tap_Count) AS Station_Footfall 
	FROM Stations s
		INNER JOIN Footfall f ON s.StationID = f.StationID 
			WHERE Travel_Date LIKE '2024%' 
            GROUP BY Zone 
            ORDER BY Station_Footfall DESC; -- remove LIMIT to list all zones (Tableau analysis - visualisations filtered by zones)
            
-- Which days of the week were busiest in 2024? 

SELECT Day_Of_week, SUM(Total_Tap_Count) AS Station_Footfall 
	FROM Footfall 
		WHERE Travel_Date LIKE '2024%'
		GROUP BY Day_Of_Week
        ORDER BY Station_Footfall DESC; 
        
-- What is the busiest station on each day of the week in 2024? 
    
    WITH Stations_Day AS (
    SELECT 
        Day_Of_Week, 
        Station_Name, 
        SUM(Total_Tap_Count) AS Station_Footfall,
        ROW_NUMBER() OVER (PARTITION BY Day_Of_Week ORDER BY SUM(Total_Tap_Count) DESC) AS rn  -- asigns a row number to each station within each day (for each day of the week, the station with the highest footfall gets rn = 1) 
    FROM Footfall f
    INNER JOIN Stations s ON f.StationID = s.StationID
    WHERE Travel_Date LIKE '2024%' 
    GROUP BY Day_Of_Week, Station_Name
)
SELECT 
    Day_Of_Week, 
    Station_Name, 
    Station_Footfall
FROM Stations_Day
WHERE rn = 1 -- filters the results to only include the top-ranked station for each day of the week 
ORDER BY 
    FIELD(Day_Of_Week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'); -- sorts output in calendar order, rather than alphabetically (SQL default for strings) 

-- Which stations were busiest on peak days in 2024? 

WITH Stations_Peak_Day AS (
    SELECT 
        Day_Of_Week, 
        Station_Name, 
        SUM(Total_Tap_Count) AS Station_Footfall,
        ROW_NUMBER() OVER (PARTITION BY Day_Of_Week ORDER BY SUM(Total_Tap_Count) DESC) AS rn  
    FROM Footfall f
    INNER JOIN Stations s ON f.StationID = s.StationID
    WHERE Travel_Date LIKE '2024%' 
		AND Day_Of_Week IN ('Thursday', 'Tuesday', 'Wednesday')
    GROUP BY Day_Of_Week, Station_Name
)
SELECT 
    Day_Of_Week, 
    Station_Name, 
    Station_Footfall
FROM Stations_Peak_Day
WHERE rn BETWEEN 1 AND 5 -- filters the results to only include the top-5 station for each peak day  
ORDER BY 
    FIELD(Day_Of_Week, 'Thursday', 'Tuesday', 'Wednesday');
    

-- Which days in the year were the busiest on 2024? 

SELECT Travel_Date, SUM(Total_Tap_Count) AS Station_Footfall 
	FROM Footfall 
		WHERE Travel_Date LIKE '2024%'
		GROUP BY Travel_Date 
        ORDER BY Station_Footfall DESC
        LIMIT 5; 
        
-- How did footfall change over the course of 2024? 

SELECT MONTHNAME(Travel_Date) AS Month,
    SUM(Total_Tap_Count) AS Monthly_Footfall
		FROM Footfall
			WHERE Travel_Date LIKE '2024%' 
			GROUP BY Month 
			ORDER BY 
	FIELD(Month, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'); 

-- Which months had the highest footfall in 2024? 

SELECT MONTHNAME(Travel_Date) AS Month,
    SUM(Total_Tap_Count) AS Monthly_Footfall
		FROM Footfall
			WHERE Travel_Date LIKE '2024%' 
			GROUP BY Month 
			ORDER BY Monthly_Footfall DESC; 
            
-- Which stations generate below average footfall in each zone? 

WITH Station_Footfall AS (
	SELECT Station_Name, Zone, AVG(Total_Tap_Count) AS Daily_Station_Footfall 
		FROM Stations s
			JOIN Footfall f ON s.StationID = f.StationID
				WHERE Travel_Date LIKE '2024%' 
                GROUP BY Station_Name, Zone 
	), 
Zone_Averages AS (
	SELECT Zone, AVG(Total_Tap_Count) AS Daily_Zone_Footfall 
		FROM Stations s 
			JOIN Footfall f ON s.StationID = f.StationID
				WHERE Travel_Date LIKE '2024%' 
				GROUP BY Zone 
	) 
SELECT Station_Name, sf.Zone, Daily_Station_Footfall, Daily_Zone_Footfall
	FROM Station_Footfall sf
		JOIN Zone_Averages za ON sf.Zone = za.Zone
			WHERE Daily_Station_Footfall < Daily_Zone_Footfall
			ORDER BY Daily_Station_Footfall ASC; 


-- Which stations generate above average footfall in each zone? 

WITH Station_Footfall AS (
	SELECT Station_Name, Zone, AVG(Total_Tap_Count) AS Daily_Station_Footfall 
		FROM Stations s
			JOIN Footfall f ON s.StationID = f.StationID
				WHERE Travel_Date LIKE '2024%' 
                GROUP BY Station_Name, Zone 
	), 
Zone_Averages AS (
	SELECT Zone, AVG(Total_Tap_Count) AS Daily_Zone_Footfall 
		FROM Stations s 
			JOIN Footfall f ON s.StationID = f.StationID
				WHERE Travel_Date LIKE '2024%' 
				GROUP BY Zone 
	) 
SELECT Station_Name, sf.Zone, Daily_Station_Footfall, Daily_Zone_Footfall
	FROM Station_Footfall sf
		JOIN Zone_Averages za ON sf.Zone = za.Zone
			WHERE Daily_Station_Footfall > Daily_Zone_Footfall
			ORDER BY Daily_Station_Footfall DESC; 