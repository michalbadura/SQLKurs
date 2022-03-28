/*
Napisz zapytanie, które zwróci:

id filmu,
tytuł filmu,
liczbę wypożyczeń filmu.
Wyniki zapisz do tabeli tymczasowej, np. tmp_film_rentals.

Dodatkowo napisz kwerendę, którą zweryfikujesz swoje rozwiązanie.
 */





CREATE TEMPORARY TABLE tmp_film_rentals
    AS SELECT f.film_id AS "id filmu",
              f.title AS "tytul filmu",
              COUNT(i.film_id) AS "liczba wypozyczen filmu"
FROM sakila3_7.film AS f
    INNER JOIN sakila3_7.inventory AS i
        ON f.film_id = i.film_id
    INNER  JOIN sakila3_7.rental AS r
        ON i.inventory_id = r.inventory_id
GROUP BY i.film_id;




-- SPRAWDZENIE

WITH trust_but_verify AS (
    SELECT i.film_id AS "id filmu",
           COUNT(r.rental_id) AS "liczba wypozyczen filmu"
    FROM sakila3_7.inventory AS i
        INNER JOIN rental r
            USING (inventory_id)
    GROUP BY i.film_id)
SELECT *
FROM trust_but_verify tbv
    INNER JOIN tmp_film_rentals tfr
        ON tfr.`id filmu`= tbv.`id filmu`
    WHERE tbv.`liczba wypozyczen filmu` = tfr.`liczba wypozyczen filmu`;