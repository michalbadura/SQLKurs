/*
Przygotuj raport, który wyświetli top 10 najchętniej wypożyczanych filmów. Przyjmij następujące założenia biznesowe do przygotowania raportu:

nazwa filmu,
liczba aktorów, którzy w nim grali,
kwota przychodu filmu,
liczba wypożyczeń filmu.
Dodatkowo upewnij się, że kwota, którą otrzymasz, dla wszystkich filmów będzie poprawna (jeszcze zanim ograniczysz wyniki).

To zadanie jest dość złożone i wymaga kilku joinów, możesz ułatwić sobie pracę korzystając z kwerend z poprzednich zadań.

LIMIT
W celu ograniczenia wyników zapytania możesz posłużyć się klauzulą LIMIT, która zwraca n pierwszych wierszy, przykładowo:
 */


DROP TABLE tmp_boxoffice; -- wykonac jesli juz istnieje na bazie.

CREATE TEMPORARY TABLE tmp_boxoffice AS
SELECT
       f.title AS "nazwa filmu",
       COUNT(fa.actor_id) AS "liczba aktorow",
       SUM(p.amount) AS "kwota przychodu filmu",
       COUNT(r.rental_id) AS "liczba wypozyczen filmu"
FROM sakila3_7.rental r
    INNER JOIN sakila3_7.inventory i
        ON r.inventory_id = i.inventory_id
    INNER JOIN sakila3_7.payment p
        ON r.rental_id = p.rental_id
    INNER JOIN sakila3_7.film f
        ON f.film_id = i.film_id
    INNER JOIN sakila3_7.film_actor fa
        ON f.film_id = fa.film_id
GROUP BY i.film_id
ORDER BY `liczba wypozyczen filmu` DESC
LIMIT 10;



SELECT * FROM tmp_boxoffice;




