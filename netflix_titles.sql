-- Query to create table netflix_titles
CREATE TABLE netflix_titles ( id VARCHAR(50)
,title VARCHAR(500)
,type VARCHAR(10)
,description VARCHAR(2000)
,release_year INT
,age_certification VARCHAR(500)
,runtime VARCHAR(500)
,genres VARCHAR(500)
,production_countries VARCHAR(500)
,seasons VARCHAR(500)
,imdb_id decimal(3,1)
,imdb_score VARCHAR(500)
,imdb_votes INT
,tmdb_popularity decimal(7,4)
,tmdb_score decimal(7,4)
);

----------------------------------------------------------
--Query to Insert bulk data in netflix_titles

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/titles.csv'
INTO TABLE netflix_titles
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
