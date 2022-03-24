/*
Tabela tasks.films_to_be_cleaned jest kopią tabeli film. Chcemy z niej usunąć filmy, które spełniają następujące warunki:

film_category in (1, 5, 7, 9), FC
length jest krótszy niż 1 godzina, TBC
rating nie jest NC-17 lub PG. TBC
Zadanie wykonaj używając JOIN. Po wykonaniu swojego zapytania napisz kolejne, które sprawdzi jego poprawność.
 */





DELETE ftbc
FROM tasks3_7.films_to_be_cleaned AS ftbc
    INNER JOIN sakila3_7.film_category AS fc
        USING (film_id)
WHERE fc.category_id IN (1, 5, 7, 9)
  AND ftbc.length < 60
  AND ftbc.rating NOT IN ('NC-17', 'PG');



-- SPRAWDZENIE. Zadanie jest poprawne, w bazie nie ma rekordow spelniajacych zalozone kryteria. Pierwotnie bylo ich 16.

SELECT *
FROM tasks3_7.films_to_be_cleaned AS ftbc
    INNER JOIN sakila3_7.film_category AS fc
        ON ftbc.film_id = fc.film_id
WHERE fc.category_id IN (1, 5, 7, 9)
  AND ftbc.length < 60
  AND ftbc.rating NOT IN ('NC-17', 'PG');