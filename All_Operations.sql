-- Run query to find top 10 'movie'
select title,
type,imdb_score 
from netflix_titles 
where imdb_score >=8.0 
and type = 'movie' 
order by imdb_score desc limit 10;
--------------------------------------------------------------------------------
-- Run query to find top 10 'show'
select title,
type,imdb_score 
from netflix_titles 
where imdb_score >=8.0 
and type = 'show' 
order by imdb_score desc limit 10;
--------------------------------------------------------------------------------
-- Run query to find bottom 10 'movie'
select title,
type,imdb_score 
from netflix_titles 
where  type = 'movie' 
order by imdb_score ASC limit 10;
--------------------------------------------------------------------------------
-- Run query to find bottom 10 'show'
select title,imdb_score 
from netflix_titles 
where  type = 'show' 
order by imdb_score ASC limit 10;
--------------------------------------------------------------------------------
--age-certifications impact 
select distinct age_certification,
ROUND(AVG(imdb_score),2)
AS avg_imdb_score,
ROUND(AVG(tmdb_score),2)
AS avg_tmdb_score,
from netflix_titles
group by age_certification 
order by avg_imdb_score desc;
-------------------------------------------------------------------------------
--Top 10 most common genres for movies
select genres,
COUNT(*) as title_count
from netflix_titles
WHERE type='movie'
group by genres
ORDER BY title_count desc
limit 10;
-------------------------------------------------------------------------------
--Top 10 most common genres for shows
select genres,
COUNT(*) as title_count
from netflix_titles
WHERE type='show'
group by genres
ORDER BY title_count desc
limit 10;
------------------------------------------------------------------------------
--Top 3 common genres overall
select t.genres,
count(*) as genre_count
from netflix_titles as t
where t.type = 'movie' or t.type = 'show'
group by t.genres
order by genre_count desc
limit 3;
