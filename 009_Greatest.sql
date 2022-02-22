/*
 Analogicznie jak w zadaniu dotyczącym LEAST, na podstawie sakila.film_list napisz i wykonaj kwerendę, która:

zwróci największą wartość z kolumn price, length,
zwróci największą wartość z kolumn price, length, rating.
Dodatkowo, obok wywołania samego GREATEST, w wyniku wyświetl kolumny składowe, które przekazujesz do funkcji, tj. np. price.

Zastanów się, dlaczego funkcja zwróciła taki a nie inny wynik.
 */


-- zwróci największą wartość z kolumn price, length,

SELECT GREATEST(price, length)
FROM sakila3_7.film_list;


-- zwróci największą wartość z kolumn price, length, rating.
-- Dodatkowo, obok wywołania samego GREATEST, w wyniku wyświetl kolumny składowe, które przekazujesz do funkcji, tj. np. price.

SELECT price, length, rating, GREATEST(price, length, rating)
FROM sakila3_7.film_list;

-- Dostaniemy wartość większą alfabetycznie, a nie liczbowow, czyli w tym przypadku rating.