-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE County (
    County_ID varchar(5)   NOT NULL,
    ST_FIPS varchar(2)   NOT NULL,
    CNTY_FIPS varchar(3)   NOT NULL,
    State text   NOT NULL,
    County text   NOT NULL,
    Pop_2010 int   NOT NULL,
    Pop_2011 int   NOT NULL,
    Pop_2012 int   NOT NULL,
    Pop_2013 int   NOT NULL,
    Pop_2014 int   NOT NULL,
    Pop_2015 int   NOT NULL,
    Pop_2016 int   NOT NULL,
    Pop_2017 int   NOT NULL,
    Pop_2018 int   NOT NULL,
    Pop_2019 int   NOT NULL,
    CONSTRAINT pk_County PRIMARY KEY (
        County_ID
     )
);

CREATE TABLE Tornadoes (
    Torn_ID int   NOT NULL,
    County_ID varchar(5)   NOT NULL,
    Year int   NOT NULL,
    Month int   NOT NULL,
    Day int   NOT NULL,
    Timestamp timestamp   NOT NULL,
    ST_FIPS varchar(2)   NOT NULL,
    CNTY_FIPS varchar(3)   NOT NULL,
    Start_Lat float   NOT NULL,
    Start_Lon float   NOT NULL,
    End_Lat float   NOT NULL,
    End_Lon float   NOT NULL,
    EF int   NOT NULL,
    Injuries int   NOT NULL,
    Fatalities int   NOT NULL,
    Loss float,
    Crop_Loss float,
    Length float   NOT NULL,
    Width int   NOT NULL,
    CONSTRAINT pk_Tornadoes PRIMARY KEY (
        Torn_ID
     )
);

ALTER TABLE Tornadoes ADD CONSTRAINT fk_Tornadoes_County_ID FOREIGN KEY(County_ID)
REFERENCES County (County_ID);

select * from county
--3193 rows

select * from tornadoes
--15,891 rows

--Creating a new table in which to join population data without messing up tornadoes table 
CREATE TABLE torn_pop as (select * from tornadoes);

select * from torn_pop;

--Add column for population
ALTER TABLE torn_pop
ADD COLUMN cnty_pop INT;

--Join pop data into torn_pop 2010
UPDATE torn_pop
SET cnty_pop = county.pop_2010
FROM county
WHERE county.county_id = torn_pop.county_id
AND torn_pop.year = 2010;

--Join pop data into torn_pop 2011
UPDATE torn_pop
SET cnty_pop = county.pop_2011
FROM county
WHERE county.county_id = torn_pop.county_id
AND torn_pop.year = 2011;

--Join pop data into torn_pop 2012
UPDATE torn_pop
SET cnty_pop = county.pop_2012
FROM county
WHERE county.county_id = torn_pop.county_id
AND torn_pop.year = 2012;

--Join pop data into torn_pop 2013
UPDATE torn_pop
SET cnty_pop = county.pop_2013
FROM county
WHERE county.county_id = torn_pop.county_id
AND torn_pop.year = 2013;

--Join pop data into torn_pop 2014
UPDATE torn_pop
SET cnty_pop = county.pop_2014
FROM county
WHERE county.county_id = torn_pop.county_id
AND torn_pop.year = 2014;

--Join pop data into torn_pop 2015
UPDATE torn_pop
SET cnty_pop = county.pop_2015
FROM county
WHERE county.county_id = torn_pop.county_id
AND torn_pop.year = 2015;

--Join pop data into torn_pop 2016
UPDATE torn_pop
SET cnty_pop = county.pop_2016
FROM county
WHERE county.county_id = torn_pop.county_id
AND torn_pop.year = 2016;

--Join pop data into torn_pop 2017
UPDATE torn_pop
SET cnty_pop = county.pop_2017
FROM county
WHERE county.county_id = torn_pop.county_id
AND torn_pop.year = 2017;

--Join pop data into torn_pop 2018
UPDATE torn_pop
SET cnty_pop = county.pop_2018
FROM county
WHERE county.county_id = torn_pop.county_id
AND torn_pop.year = 2018;

--Join pop data into torn_pop 2019
UPDATE torn_pop
SET cnty_pop = county.pop_2019
FROM county
WHERE county.county_id = torn_pop.county_id
AND torn_pop.year = 2019;

--Check for null values
select * from torn_pop
where torn_pop.year = 2020
and cnty_pop IS NULL;

--Delete rows for years in which no population data (2008, 2009, 2020)
DELETE FROM torn_pop
WHERE year = 2008;

select * from torn_pop;

DELETE FROM torn_pop
WHERE year = 2009;

select * from torn_pop;

DELETE FROM torn_pop
WHERE year = 2020;

select * from torn_pop;
--11,968










