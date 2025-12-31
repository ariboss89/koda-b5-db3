-- Mengambil data movie yang rilis di tahun 2020
SELECT id, title, release_date, rating, director_id, genre_id FROM movies WHERE EXTRACT(YEAR FROM release_date) = 2020;

-- Mengambil list aktor yang memiliki first_name berakhiran s
SELECT id, first_name, last_name FROM actors WHERE first_name LIKE '%s';

-- Mengambil data movie dengan rating minimum 4 dan maks 8 yang rilis pada tahun 2004 -2010
SELECT title, release_date, rating  FROM movies WHERE rating >= 4.0 AND rating <=8.0
AND EXTRACT(YEAR FROM release_date) >= 2004
AND EXTRACT(YEAR FROM release_date) <= 2010