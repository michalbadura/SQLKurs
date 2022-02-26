/*
Znajdź aktora / aktorkę o imieniu ZERO i nazwisku CAGE, dla jego id wyświetl wszystkie statystyki,
Wyświetl aktorów, którzy grali w co najmniej 30 filmach,
Używając wyników poprzedniego punktu, wyświetl wszystkie informacje o nich z sakila.actor.
Dodatkowo: 4. Znajdź aktorów, którzy zagrali w filmach o długości (kolumna longest_movie_duration) 184, 174, 176, 164, 5. Używając poprzedniego podpunktu, z sakila.film znajdź te filmy (tutaj musisz wykonać więcej niż jedno podzapytanie).

Wskazówka: W ostatnim zadaniu możesz np. podzielić sobie poszczególne zapytania do tabel sakila.actor_analytics oraz sakila.film_actor, na moduły i na końcu odpytać sakila.film, odpowienio je łącząc w WHERE.
 */



-- Znajdź aktora / aktorkę o imieniu ZERO i nazwisku CAGE, dla jego id wyświetl wszystkie statystyki,

SELECT *
FROM sakila3_7.actor_analytics
WHERE first_name = 'ZERO' AND last_name = 'CAGE';

-- Znajdź aktora / aktorkę o imieniu ZERO i nazwisku CAGE, dla jego id wyświetl wszystkie statystyki, Z PODZAPYTANIAMI!

SELECT *
FROM sakila3_7.actor_analytics
WHERE actor_id = (SELECT actor_id FROM actor_analytics WHERE first_name = 'ZERO' AND last_name = 'CAGE');

-- Wyświetl aktorów, którzy grali w co najmniej 30 filmach,

SELECT first_name, last_name
FROM sakila3_7.actor_analytics
WHERE films_amount >= 30;


-- Wyświetl aktorów, którzy grali w co najmniej 30 filmach, Z PODZAPYTANIAMI!

SELECT first_name, last_name
FROM sakila3_7.actor_analytics
WHERE actor_id IN (SELECT actor_id FROM actor_analytics WHERE films_amount >= 30);


-- Używając wyników poprzedniego punktu, wyświetl wszystkie informacje o nich z sakila.actor.

SELECT *
FROM sakila3_7.actor
WHERE actor_id IN (SELECT actor_id FROM actor_analytics WHERE films_amount >= 30);

--  Znajdź aktorów, którzy zagrali w filmach o długości (kolumna longest_movie_duration) 184, 174, 176, 164, 5. Używając poprzedniego podpunktu, z sakila.film znajdź te filmy (tutaj musisz wykonać więcej niż jedno podzapytanie).

SELECT *
FROM sakila3_7.actor;

select *
from sakila3_7.actor_analytics;

select *
from sakila3_7.film;

SELECT *
FROM sakila3_7.film
WHERE film_id IN (SELECT FROM actor_analytics WHERE actor_analytics.longest_movie_duration IN (184, 174, 176, 164, 5));
g


select *
from film where film_id in (select film_id from film_actor where actor_id in
            (select actor_analytics.actor_id from actor_analytics where longest_movie_duration in
                                                (184, 174, 176, 164, 5)))
and length in (184, 174, 176, 164, 5);

