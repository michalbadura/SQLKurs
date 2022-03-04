

SELECT;


 zadanie 1

 SELECT *
    FROM sakila3_7.rental
WHERE rental_date BETWEEN '2005-01-01' AND '2006-01-01'

 zadanie 2

SELECT *
    FROM sakila3_7.rental
WHERE rental_date BETWEEN '2005-05-23' AND '2005-05-25'

zadanie 3

SELECT *
    FROM sakila3_7.rental
WHERE rental_date >= '2005-05-31'

zadanie 4
SELECT * FROM sakila3_7.rental
WHERE rental_date BETWEEN '2005-06-30' AND '2005-08-31' AND staff_id = 2;
*/


/* zadanie 2.1 :(

SELECT *
FROM sakila3_7.customer
WHERE active = 0
   AND store_id = 1;

zadanie 2.2 :)

SELECT *
FROM sakila3_7.customer
WHERE email NOT LIKE '%sakilacustomer.org'


zadanie 2.3 :)

SELECT DISTINCT create_date
FROM sakila3_7.customer

 */


/* zad 3.1
SELECT *
FROM sakila3_7.actor_analytics
WHERE films_amount > 25;



zad 3.2

SELECT *
FROM sakila3_7.actor_analytics
WHERE films_amount > 20 AND avg_film_rate > 3.3;

zad 3.4

SELECT *
FROM sakila3_7.actor_analytics
WHERE films_amount > 20
  AND avg_film_rate > 3.3
   OR actor_payload > 2000;


zad aliasy 1.1
SELECT
       rental_id,
       inventory_id,
       customer_id,
       rental_date AS "date_of_rental",
       return_date AS "date_of_rental_return"
FROM sakila3_7.rental

zad aliasy 1.2

SELECT
       rental_id AS "id wypożyczenia",
       inventory_id AS "id przedmiotu",
       rental_date AS "data wypożyczenia",
       return_date AS "data zwrotu"
FROM sakila3_7.rental

daty jebaniutkie kretynie zadania

SELECT date_format(payment_date, '%Y/%m/%e') from payment;

SELECT date_format(payment_date, '%Y-%M-%w') from payment;

SELECT date_format(payment_date, '%Y-%v') from payment;

SELECT date_format(payment_date, '%Y/%m/%e@%W') from payment;

SELECT DATE_FORMAT(payment_date, '%Y/%m/%e@%w') from payment;



SELECT DATE_FORMAT(payment_date, GET_FORMAT(date, 'USA'))
FROM sakila3_7.payment




SELECT price, length, LEAST(price, length)
FROM sakila3_7.film_list;


SELECT price, length, rating, LEAST(price, length, rating)
FROM sakila3_7.film_list;


SELECT price, length, GREATEST(price, length)
FROM sakila3_7.film_list;


SELECT price, length, rating, GREATEST(price, length, rating)
FROM sakila3_7.film_list;

 :( po union druga kwerenda

SELECT first_name
FROM sakila3_7.customer
UNION

SELECT first_name
FROM sakila3_7.actor
UNION



SELECT category
FROM sakila3_7.nicer_but_slower_film_list
UNION
SELECT category
FROM sakila3_7.nicer_but_slower_film_list;


SELECT *
FROM sakila3_7.sales_by_store
WHERE total_sales > (select total_sales from sales_total) /2;

SELECT * FROM sales_by_store where total_sales > (select )




SELECT * FROM sakila3_7.rating_analytics
WHERE avg_rental_rate > (SELECT SUM(avg_rental_rate) /2);


SELECT * FROM sakila3_7.rating_analytics
WHERE avg_rental_duration < (SELECT SUM(avg_rental_duration) /2) AND rating IS NOT NULL;

SELECT * FROM sakila3_7.rating;

SELECT * FROM sakila3_7.rating_analytics
WHERE rating = (SELECT rating.rating FROM rating WHERE id_rating = 3);


SELECT * FROM sakila3_7.rating;

SELECT * FROM sakila3_7.rating_analytics;





SELECT *
FROM sakila3_7.actor
WHERE first_name = 'Zero'AND last_name = 'Cage';

SELECT *
FROM sakila3_7.actor_analytics
Where films_amount >= 30;


SELECT *
FROM sakila3_7.actor
WHERE actor_id IN (SELECT actor_analytics.actor_id FROM sakila3_7.actor_analytics WHERE films_amount >= 30);


with films_over_30 as (
    select actor_id from actor_analytics where films_amount >= 30
)
select * from actor where actor_id in (select * from films_over_30);


 */

SELECT *
FROM sakila3_7.actor
WHERE actor_id IN (SELECT actor_analytics.actor_id FROM sakila3_7.actor_analytics WHERE films_amount >= 30);




SELECT *
FROM sakila3_7.film_list
WHERE category in ('Horror', 'Documentary', 'Family') AND rating in ('PG', 'NC-17')
ORDER BY category desc