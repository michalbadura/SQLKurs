SELECT * FROM examples3_7.payment_join;

SELECT * FROM examples3_7.rental_join;

SELECT payment_id, payment.rental_id, amount, rental_date, payment_date FROM sakila3_7.rental
INNER JOIN sakila3_7.payment ON sakila3_7.rental.rental_id = sakila3_7.payment.rental_id;


SELECT sakila3_7.rental.inventory_id, sakila3_7.rental.rental_id, sakila3_7.inventory.film_id FROM sakila3_7.rental
INNER JOIN sakila3_7.inventory ON rental.inventory_id = inventory.inventory_id;




SELECT sakila3_7.inventory.inventory_id, sakila3_7.film.film_id, sakila3_7.film.title, sakila3_7.film.description, sakila3_7.film.release_year
FROM sakila3_7.film
INNER JOIN sakila3_7.inventory ON sakila3_7.film.film_id = sakila3_7.inventory.film_id;





SELECT sakila3_7.rental.rental_id,
       sakila3_7.film.film_id,
       sakila3_7.film.title,
       sakila3_7.film.description,
       sakila3_7.film.rating,
       sakila3_7.film.rental_rate,
       sakila3_7.rental.rental_date,
       sakila3_7.payment.payment_date,
       sakila3_7.payment.amount
FROM sakila3_7.rental
INNER JOIN sakila3_7.film ON sakila3_7.rentfilm_id = sakila3_7.inventory.film_id
INNER JOIN sakila3_7.inventory ON sakila3_7.inventory.inventory_id = sakila3_7.rental.inventory_id
INNE JOIN ;

select * from sakila3_7.film;

SELECT * FROM tasks3_7.films_to_be_cleaned

/*
 update tasks1_7.city_country cc
inner join sakila1_7.country c
on c.country_id = cc.country_id
set cc.country = c.country;
 */

SELECT * FROM tasks3_7.school
