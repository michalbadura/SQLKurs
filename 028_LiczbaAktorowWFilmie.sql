/*
Napisz kwerendę, która zwróci następujące informacje:

nazwę filmu,
liczbę aktorów występujących w filmie.
Wyniki zapisz do tabeli tymczasowej, np. tmp_film_actors.

Dodatkowo napisz zapytanie, którym zweryfikujesz swoją kwerendę.
 */

CREATE VIEW tmp_film_actors AS
    SELECT title AS "nazwa filmu",
              COUNT(fa.actor_id) AS "liczb aktorów"
FROM sakila3_7.film AS f
    INNER  JOIN sakila3_7.film_actor AS fa
        ON f.film_id = fa.film_id
GROUP BY `nazwa filmu`;
