/*
 Używając tabel:

sakila.customer,
sakila.actor,
sakila.staff
Wyświetl wszystkie imiona osób bez powtórzeń.
 */



SELECT first_name
FROM sakila3_7.customer
UNION
SELECT first_name
FROM sakila3_7.actor
UNION
SELECT staff.first_name
FROM sakila3_7.staff;
