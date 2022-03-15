/*
Używając kwerend i sposobu łączenia z poprzednich zadań napisz kwerendę, które zwróci następujące informacje dot. wypożyczenia:

id wypożyczenia,
id filmu,
tytuł filmu,
opis filmu,
rating filmu,
ocenę wypożyczenia,
datę wypożyczenia,
datę płatności,
kwotę płatności.
Kolumnom nadaj tak nazwy, aby były czytelne dla osoby, która pierwszy raz otwiera taki raport, tj. aby nie musiała się zastanawiać, co oznacza na przykład kolumna title.

Wskazówka
Składnia przy łączeniu wielu tabel jest podobna jak przyłączeniu dwóch, wystarczy tylko dopisać kolejne złączenie np.:

SELECT
    t1.col_name,
    t2.col_name2,
    t3.col_name3
FROM
        tab1 AS t1
    [INNER|LEFT|RIGHT] JOIN
        tab2 AS t2 ON t1.key1 = t2.key1
    [INNER|LEFT|RIGHT] JOIN
        tab3 AS t3 ON t2.key2 = t3.key3

 */




SELECT
       r.rental_id AS 'id wypożyczenia',
       f.film_id AS 'id filmu',
       f.title AS 'tytuł filmu',
       f.description AS 'opis filmu',
       f.rating AS 'rating filmu',
       f.rental_rate AS 'cena wypożyczenia',
       r.rental_date AS 'datę wypożyczenia',
       r.return_date AS 'datę płatności',
       p.amount AS 'kwotę płatności'
FROM sakila3_7.rental AS r
    INNER JOIN sakila3_7.payment AS p
        ON r.rental_id = p.rental_id
    INNER JOIN sakila3_7.inventory AS i
        ON i.inventory_id = r.inventory_id
    INNER JOIN sakila3_7.film AS f
        ON f.film_id = i.film_id;