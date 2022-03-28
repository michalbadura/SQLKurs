/*
Napisz zapytanie, które zwróci kwotę wpłat z filmu w następującym formacie:

film_id,
kwota wpłat z filmu.
Pamiętaj o sprawdzeniu poprawności zadania.
 */




DROP TABLE tmp_film_payments; -- wykonac jesli juz istnieje na bazie.


CREATE TEMPORARY TABLE tmp_film_payments AS
SELECT i.film_id,
       SUM(p.amount) AS "kwota wplat z filmu"
FROM sakila3_7.rental r
    INNER JOIN sakila3_7.inventory i
        ON r.inventory_id = i.inventory_id
    INNER JOIN sakila3_7.payment p
        ON r.rental_id = p.rental_id
GROUP BY film_id;




-- SPRAWDZENIE


WITH trust_no1 AS (
    SELECT i.film_id,
           SUM(p.amount) AS "kwota wplat z filmu"
    FROM sakila3_7.rental r
             INNER JOIN sakila3_7.inventory i
                        ON r.inventory_id = i.inventory_id
             INNER JOIN sakila3_7.payment p
                        ON r.rental_id = p.rental_id
    GROUP BY film_id
)
SELECT *
FROM trust_no1 tn1
    INNER JOIN tmp_film_payments tfp ON tfp.film_id = tn1.film_id
WHERE tn1.`kwota wplat z filmu` = tfp.`kwota wplat z filmu`;


