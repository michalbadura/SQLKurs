/*
Zapoznaj się ze strukturą sakila.rating_analytics, która posiada zagregowane informacje dotyczące poszczególnych ratingów filmowych oraz dla wszystkich filmów. Następnie wykonaj następujące działania:

Analizując tylko strukturę danych, zastanów się, który wiersz może wyznaczać statystyki dla wszystkich ratingów (bez podziału na rating),
Znajdź te ratingi, które są wyższe od średniej wyznaczonej dla wszystkich filmów, bez podziału na rating,
Znajdź te ratingi, których średni czas wypożyczenia jest krótszy od średniej globalnej,
Używając podzapytania wyświetl statystyki dla rating_id = 3,
Używając podzapytania wyświetl statystyki dla rating_id = 3, 2, 5.

Dodatkowo, jako ćwiczenie: 6. Napisz kwerendę, która powie, który rating cieszy się największą popularnością,

7. Napisz kwerendę, która odpowie, z którego ratingu filmy są średnio najkrótsze.

Pamiętaj o usunięciu ratingu dla wszystkich filmów.
 */




-- Analizując tylko strukturę danych, zastanów się, który wiersz może wyznaczać statystyki dla wszystkich ratingów (bez podziału na rating),

SELECT *
FROM sakila3_7.rating_analytics;

-- Wiersz 6, ten z NULLem.


-- Znajdź te ratingi, które są wyższe od średniej wyznaczonej dla wszystkich filmów, bez podziału na rating

SELECT *
FROM sakila3_7.rating_analytics
WHERE rating IS NOT NULL
AND avg_rental_rate > (SELECT AVG(avg_rental_rate) FROM rating_analytics);


-- Znajdź te ratingi, których średni czas wypożyczenia jest krótszy od średniej globalnej,

SELECT *
FROM sakila3_7.rating_analytics
WHERE avg_rental_duration < (SELECT avg_rental_duration FROM rating_analytics WHERE rating IS NULL);


-- Używając podzapytania wyświetl statystyki dla rating_id = 3,

SELECT *
FROM sakila3_7.rating_analytics
WHERE rating = (SELECT rating.rating FROM sakila3_7.rating WHERE id_rating = 3);


-- Używając podzapytania wyświetl statystyki dla rating_id = 3, 2, 5.

SELECT *
FROM sakila3_7.rating_analytics
WHERE rating IN (SELECT rating.rating FROM sakila3_7.rating WHERE id_rating IN (3,2,5));


-- Napisz kwerendę, która powie, który rating cieszy się największą popularnością,

SELECT *
FROM sakila3_7.rating_analytics
WHERE rentals = (SELECT MAX(rentals) FROM rating_analytics WHERE rating IS NOT NULL);


-- Napisz kwerendę, która odpowie, z którego ratingu filmy są średnio najkrótsze.

SELECT *
FROM sakila3_7.rating_analytics
WHERE avg_film_length = (SELECT MIN(avg_film_length) FROM rating_analytics WHERE rating IS NOT NULL);





