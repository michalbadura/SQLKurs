/*
 Używając sakila.film_list, napisz i wykonaj kwerendę, która:

zwróci najmniejszą wartość z kolumn price, length,
zwróci najmniejszą wartość z kolumn price, length, rating.
Jaka jest różnica pomiędzy wynikami podpunktu 1. oraz 2.? Skąd się ona bierze?
 */





-- zwróci najmniejszą wartość z kolumn price, length,

SELECT price, length, LEAST(price, length)
FROM sakila3_7.film_list;


-- zwróci najmniejszą wartość z kolumn price, length, rating.

SELECT price, length, rating, LEAST(price, length, rating)
FROM sakila3_7.film_list

-- Jaka jest różnica pomiędzy wynikami podpunktu 1. oraz 2.? Skąd się ona bierze? W drugim przypadku mamy różne typy danych, nie tylko numeryki. Są też dane tekstowe.