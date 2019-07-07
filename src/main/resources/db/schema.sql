CREATE SCHEMA IF NOT EXISTS airdb;

CREATE TABLE airdb.location (
	ID INT(3) NOT NULL AUTO_INCREMENT,
	CODE VARCHAR(5) NOT NULL,
	NAME VARCHAR(64) NOT NULL,
	CITY VARCHAR(64) NOT NULL,
	COUNTRY VARCHAR(10) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE airdb.flights
	(ID INT(3) NOT NULL AUTO_INCREMENT,
	AIRLINE	VARCHAR(25) NOT NULL,
	START_AIRPORT VARCHAR(25) NOT NULL,
	START_TIME VARCHAR(25) NOT NULL,
	END_AIRPORT VARCHAR(25) NOT NULL,
	END_TIME VARCHAR(25) NOT NULL,
	STOPS SMALLINT NOT NULL,
	RETURN_START_AIRPORT VARCHAR(25) NOT NULL,
	RETURN_START_TIME VARCHAR(25) NOT NULL,
	RETURN_END_AIRPORT VARCHAR(25) NOT NULL,
	RETURN_END_TIME VARCHAR(25) NOT NULL,
	RETURN_STOPS SMALLINT NOT NULL,	
	PRICE INT(10) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE airdb.deals
	(ID INT(3) NOT NULL AUTO_INCREMENT,
	LOCATION_CODE VARCHAR(5),
	PRICE INTEGER NOT NULL,
	DISCOUNT INTEGER NOT NULL,
	EVENT VARCHAR(256) NOT NULL,
	DATES VARCHAR(256) NOT NULL,
	PLACE VARCHAR(256) NOT NULL,	
	PRIMARY KEY (ID)
);