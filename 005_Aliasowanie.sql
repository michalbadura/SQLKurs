/*
 Wyświetl dane z sakila.rental nadając aliasy dla kolumn według poniższych wymagań:

kolumny rental_id, inventory_id, customer_id pozostaw bez zmian,
zmień kolumnę rental_date na date_of_rental,
zmień kolumnę return_date na date_of_rental_return,
kolumny wypisz w wybranej przez siebie kolejności.
 */

SELECT
       rental_id,
       rental_date AS date_of_rental,
       inventory_id,
       customer_id,
       return_date AS date_of_rental_return
FROM sakila3_7.rental;


/*
Wyświetl dane z sakila.rental tłumacząc przy tym nazwy kolumn z angielskiego na polski według poniższych wymagań:

rental_id - id wypożyczenia,
inventory_id - id przedmiotu,
rental_date - data wypożyczenia,
return_date - data zwrotu.
 */

SELECT
       rental_id AS "id wypożyczenia",
       inventory_id AS "id przedmiotu",
       rental_date AS "data wypożyczenia",
       return_date AS "data zwrotu"
FROM sakila3_7.rental;
