/*
Napisz zapytanie, które połączy tabele film oraz inventory oraz wyświetli poniższe kolumny:

inventory_id,
film_id,
title,
description,
release_year.
 */



SELECT
       i.inventory_id,
       i.film_id,
       f.title,
       f.description,
       f.release_year
FROM sakila3_7.film f
    INNER JOIN sakila3_7.inventory i
        ON f.film_id = i.film_id;