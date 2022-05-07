-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "County" (
    "County_ID" varchar(5)   NOT NULL,
    "ST_FIPS" varchar(2)   NOT NULL,
    "CNTY_FIPS" varchar(3)   NOT NULL,
    "State" text   NOT NULL,
    "County" text   NOT NULL,
    "Pop_2010" int   NOT NULL,
    "Pop_2011" int   NOT NULL,
    "Pop_2012" int   NOT NULL,
    "Pop_2013" int   NOT NULL,
    "Pop_2014" int   NOT NULL,
    "Pop_2015" int   NOT NULL,
    "Pop_2016" int   NOT NULL,
    "Pop_2017" int   NOT NULL,
    "Pop_2018" int   NOT NULL,
    "Pop_2019" int   NOT NULL,
    CONSTRAINT "pk_County" PRIMARY KEY (
        "County_ID"
     )
);

CREATE TABLE "Tornadoes" (
    "Torn_ID" int   NOT NULL,
    "County_ID" varchar(5)   NOT NULL,
    "Year" int   NOT NULL,
    "Month" int   NOT NULL,
    "Day" int   NOT NULL,
    "Timestamp" timestamp   NOT NULL,
    "ST_FIPS" varchar(2)   NOT NULL,
    "CNTY_FIPS" varchar(3)   NOT NULL,
    "Start_Lat" float   NOT NULL,
    "Start_Lon" float   NOT NULL,
    "End_Lat" float   NOT NULL,
    "End_Lon" float   NOT NULL,
    "EF" int   NOT NULL,
    "Injuries" int   NOT NULL,
    "Fatalities" int   NOT NULL,
    "Loss" float,
    "Crop_Loss" float,
    "Length" float   NOT NULL,
    "Width" int   NOT NULL,
    CONSTRAINT "pk_Tornadoes" PRIMARY KEY (
        "Torn_ID"
     )
);

ALTER TABLE "Tornadoes" ADD CONSTRAINT "fk_Tornadoes_County_ID" FOREIGN KEY("County_ID")
REFERENCES "County" ("County_ID");

