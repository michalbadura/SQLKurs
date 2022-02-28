/*select price, length, greatest(price, length) from film_list;
select price, length, rating, greatest(price, length, rating) from film_list;


select * from actor
inner join actor_analytics aa on actor.actor_id = aa.actor_id
where actor.first_name = 'ZERO' and actor.last_name = 'CAGE';

select actor.*, films_amount from actor
inner join actor_analytics aa on actor.actor_id = aa.actor_id
where films_amount >=30;

select actor.*, longest_movie_duration from actor
inner join actor_analytics aa on actor.actor_id = aa.actor_id
where longest_movie_duration in (184, 174, 176, 164, 5);

select * from film
inner join film_actor fa on film.film_id = fa.film_id
inner join actor_analytics aa on fa.actor_id = aa.actor_id
where longest_movie_duration in (184, 174, 176, 164, 5)
and film.length in (184, 174, 176, 164, 5);

 */


SELECT *
FROM examples3_7.payment_join;

SELECT *
FROM examples3_7.rental_join;

-- INNER
SELECT *
FROM examples3_7.payment_join
    INNER JOIN examples3_7.rental_join
        ON examples3_7.payment_join.rental_id = examples3_7.rental_join.rental_id;

-- LEFT
SELECT *
FROM examples3_7.payment_join
    LEFT JOIN examples3_7.rental_join
        ON examples3_7.rental_join.rental_id = examples3_7.payment_join.rental_id;

-- RIGHT
SELECT *
FROM examples3_7.payment_join
    LEFT JOIN examples3_7.rental_join
        ON examples3_7.rental_join.rental_id = examples3_7.payment_join.rental_id;

-- FULL (L + UNION + R )
SELECT *
FROM examples3_7.payment_join
    LEFT JOIN examples3_7.rental_join
        ON examples3_7.rental_join.rental_id = examples3_7.payment_join.rental_id
UNION
SELECT *
FROM examples3_7.payment_join
    RIGHT JOIN examples3_7.rental_join
        ON examples3_7.rental_join.rental_id = examples3_7.payment_join.rental_id;




