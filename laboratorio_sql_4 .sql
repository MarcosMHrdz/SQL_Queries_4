use sakila;
-- Obtenga calificaciones de películas.
select 
title, rating
from film;
-- Obtenga años de lanzamiento.
select 
title, release_year
from film;
-- Obtenga todas las películas con ARMAGEDDON en el título.
select title
from film
where title like '%ARMAGEDDON%';
-- Consigue todas las películas con APOLO en el título
select title
from film
where title like '%APOLLO%';
-- Consigue todas las películas cuyo título termina en APOLO.
select title
from film
where title like '%APOLLO';
-- Obtenga todas las películas con la palabra FECHA en el título
SELECT * FROM sakila.film
WHERE title REGEXP '\\bdate\\b';
-- Consigue 10 películas con el título más largo.
SELECT * FROM sakila.film
ORDER BY CHAR_LENGTH(title) DESC
limit 10;
-- Consigue 10 de las películas más largas.
SELECT * FROM sakila.film
ORDER BY LENGTH DESC
limit 10;
-- ¿ Cuántas películas incluyen contenido detrás de escena ?
SELECT COUNT(*) FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';

-- Enumere las películas ordenadas por año de estreno y título en orden alfabético.
SELECT release_year, title 
FROM film
ORDER BY release_year desc, title;

