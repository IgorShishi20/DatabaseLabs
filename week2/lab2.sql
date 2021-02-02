-- Database: First

-- DROP DATABASE "MOVIE_DB";

CREATE DATABASE "MOVIE_DB"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
	
	CREATE TABLE Movie(
	title TEXT,
	actor_name TEXT,
	year_of_release INTEGER,
	length INTEGER,
	plot TEXT,
	genre TEXT,
	PRIMARY KEY(title),
	FOREIGN KEY(title) REFERENCES Movie(title)
	);
	
	CREATE TABLE Production_Company(
	name TEXT,
	adress TEXT,
	PRIMARY KEY(name)
	);
	
	CREATE TABLE Director(
	name TEXT,
	date_of_birth TEXT,
	PRIMARY KEY(name)
	);
	
	CREATE TABLE Quote(
	quote TEXT,
	PRIMARY KEY(quote)
	);
	
	CREATE TABLE Actor(
	name title,
	name TEXT,
	date_of_birth TEXT,
	PRIMARY KEY(name),
	FOREIGN KEY(name) REFERENCES Movie(actor_name)
	);