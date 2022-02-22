/*
 Zapoznaj się ze strukturą sakila.actor_analytics a następnie napisz kwerendy, które:

wyświetlą aktorów, którzy grali w ponad 25 filmach,
wyświetlą aktorów, którzy grali w ponad 20 filmach i ich średni rating przekracza 3.3,
wyświetlą aktorów, którzy grali w ponad 20 filmach i ich średni rating przekracza 3.3 lub wpływy z wypożyczeń (actor_payload) przekroczyły 2000.

 */




-- wyświetlą aktorów, którzy grali w ponad 25 filmach,

SELECT *
FROM sakila3_7.actor_analytics
WHERE films_amount > '25';


-- wyświetlą aktorów, którzy grali w ponad 20 filmach i ich średni rating przekracza 3.3,

SELECT *
FROM sakila3_7.actor_analytics
WHERE films_amount > '20'
  AND avg_film_rate > '3.3';


-- wyświetlą aktorów, którzy grali w ponad 20 filmach i ich średni rating przekracza 3.3 lub wpływy z wypożyczeń (actor_payload) przekroczyły 2000.

SELECT *
FROM sakila3_7.actor_analytics
WHERE films_amount > '20'
  AND avg_film_rate > '3.3'
   OR actor_payload > '2000';



