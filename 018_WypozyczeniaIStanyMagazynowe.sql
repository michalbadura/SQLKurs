/*
Napisz zapytanie, które połączy tabele rental oraz inventory oraz wyświetli poniższe kolumny:

inventory_id,
rental_id,
film_id.
Ponownie użyj INNER JOIN w celu połączenia.
 */




SELECT
       i.inventory_id,
       r.rental_id,
       i.film_id
FROM sakila3_7.rental r
    INNER JOIN sakila3_7.inventory i
        ON r.inventory_id = i.inventory_id;