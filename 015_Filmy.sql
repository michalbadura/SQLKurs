/*
Używając sakila.film_list:

Napisz kwerendę, która wyświetli filmy z kategorii Horror, Documentary, Family o ratingu PG lub NC-17,
Używając wyników poprzedniego zadania oraz sakila.film_text, wyświetl opisy tych filmów.
Dodatkowo: 3. Posortuj sakila.film_list według klucza Category - rosnąco, Price - malejąco, 4. Posortuj sakila.film_list według klucza Rating - rosnąco, Length - malejąco.
 */




 -- Napisz kwerendę, która wyświetli filmy z kategorii Horror, Documentary, Family o ratingu PG lub NC-17,

SELECT *
FROM sakila3_7.film_list
WHERE category IN ('Horror', 'Documentary', 'Family')
AND rating IN ('PG', 'NC-17');


-- Używając wyników poprzedniego zadania oraz sakila.film_text, wyświetl opisy tych filmów.

SELECT title, description
FROM sakila3_7.film_text
WHERE film_id IN (SELECT FID FROM sakila3_7.film_list
                    WHERE category IN ('Horror', 'Documentary', 'Family')
                        AND rating IN ('PG', 'NC-17'));


-- Posortuj sakila.film_list według klucza Category - rosnąco, Price - malejąco,

SELECT *
FROM sakila3_7.film_list
ORDER BY category, price DESC;


-- Posortuj sakila.film_list według klucza Rating - rosnąco, Length - malejąco.

SELECT *
FROM sakila3_7.film_list
ORDER BY rating, length DESC;
