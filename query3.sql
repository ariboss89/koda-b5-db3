--
SELECT g.name AS "GENRE", COUNT(m.director_id) 
FROM movies m
JOIN genres g ON m.genre_id = g.id
GROUP BY g.name
ORDER BY "GENRE" ASC;

--
SELECT a.first_name AS "ACTOR", COUNT(ma.movie_id)
FROM movies_actors ma
JOIN actors a ON ma.actor_id = a.id
JOIN movies m ON ma.movie_id= m.id
GROUP BY a.first_name
HAVING COUNT(ma.movie_id) >=5;

--
SELECT d.first_name AS "Director", COUNT(m.title) AS "Count"
FROM movies m 
JOIN directors d ON m.director_id = d.id
GROUP BY d.first_name
ORDER BY "Count" DESC
LIMIT 1;

--
SELECT EXTRACT(YEAR FROM release_date) AS "YEAR", COUNT(release_date) AS "Total Movies"
FROM movies
GROUP BY EXTRACT(YEAR FROM release_date)
ORDER BY "Total Movies" DESC
LIMIT 1;

--
SELECT m.title, string_agg(a.first_name ||' '|| a.last_name , ', ' )
FROM movies_actors ma
JOIN actors a ON ma.actor_id = a.id
JOIN movies m ON ma.movie_id = m.id
GROUP BY m.title


