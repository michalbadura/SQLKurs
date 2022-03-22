/*
W tabeli tasks.city_country znajdują się trzy kolumny:

city,
country_id,
country.
W tym momencie kolumna country jest pusta, napisz odpowiednie zapytanie i uzupełnij ją używając UPDATE.

Dodatkowo, po wykonaniu zapytania napisz kolejne, które sprawdzi, czy ta kolumna na pewno została uzupełniona.
*/



UPDATE
    tasks3_7.city_country AS cc
        INNER JOIN sakila3_7.country AS c
        ON c.country_id = cc.country_id
SET cc.country = c.country
WHERE cc.country IS NULL;