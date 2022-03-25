/*
Napisz zapytanie, które zwróci:

id filmu,
tytuł filmu,
liczbę wypożyczeń filmu.
Wyniki zapisz do tabeli tymczasowej, np. tmp_film_rentals.

Dodatkowo napisz kwerendę, którą zweryfikujesz swoje rozwiązanie.
 */





CREATE TEMPORARY TABLE tmp_film_rentals
    AS SELECT
              f.film_id AS "id filmu",
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
    SELECT
              i.film_id AS "id filmu",
             -- .title AS "tytul filmu",
              COUNT(r.rental_id) AS "liczba wypozyczen filmu"
    FROM sakila3_7.inventory AS i
        INNER JOIN rental r
            USING (inventory_id)
    GROUP BY i.film_id);



SELECT *
FROM trust_but_verify
    INNER JOIN tmp_film_rentals tfr
        ON  tmp_film_rentals on trust_but_verify.film_id = t
            rc.film_id =


-- dokonczyc, poprawic !!!


        ;

with rentals_check as (
    select i.film_id, count(r.rental_id)
        as rental_count
    from inventory i
        inner join rental r
            on i.inventory_id = r.inventory_id
    group by i.film_id)
select * from rentals_check rc
inner join tmp_film_rentals tfr on tfr.film_id = rc.film_id
where rc.rental_count = tfr.rental_count;


