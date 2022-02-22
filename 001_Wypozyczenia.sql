/*
 Wypożyczenia
Napisz zapytania, które wyświetlą informacje (sakila.rental) na podstawie poniższych kryteriów:

o wypożyczeniach z roku 2005,
o wypożyczeniach z dnia 2005-05-24,
o wypożyczeniach po 2005-06-30,
o wypożyczeniach w trakcie wakacji, tj. pomiędzy 2005-06-30 a 2005-08-31 od pracownika Jon'a (sprawdź najpierw jaki ma staff_id w sakila.staff).

Zapytania są wzajemnie wykluczające, dlatego napisz po prostu kilka osobnych kwerend.
 */




-- o wypożyczeniach z roku 2005,

SELECT *
FROM sakila3_7.rental
WHERE year(rental_date) = 2005;


-- o wypożyczeniach z dnia 2005-05-24,

SELECT *
FROM sakila3_7.rental
WHERE year(rental_date) = 2005 AND month(rental_date) = 05 AND day(rental_date) = 24;

-- o wypożyczeniach po 2005-06-30,


