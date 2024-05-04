-- Query to create table netflix_credits

CREATE TABLE netflix_credits(
person_id INT
,id VARCHAR(50)
,name VARCHAR(500)
,character_played VARCHAR(500)
,role VARCHAR(50));

------------------------------------------------------------------------------

--Query to insert bulk data in netflix_credits

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credits.csv'
INTO TABLE netflix_credits
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
