/*
Używając tabeli actor_analytics, napisz zapytanie, które pogrupuje aktorów według poniższych kryteriów:

jeśli avg_film_rate < 2 - 'poor acting',
jeśli avg_film_rate jest pomiędzy 2 oraz 2.5 - 'fair acting',
jeśli avg_film_rate jest pomiędzy 2.5 oraz 3.5 - 'good acting',
jeśli avg_film_rate jest powyżej 3.5 - 'superb acting.

Tak stworzoną kolumnę nazwij acting_level i następnie na jej podstawie dokonaj następującej analizy, obliczając:

liczbę wystąpień w każdej grupie,
sumę przychodów każdej grupy,
liczbę filmów w każdej grupie,
średni rating w grupie.

Wskazówka

Zadanie wykonaj w dwóch krokach:

Stwórz podzapytanie, w którym stworzona zostanie kolumna acting_level,

Na podstawie wyników z poprzedniego podpunktu wykonaj resztę zadania.

 */




-- Pierwszy krok

SELECT
       *,
       CASE
            WHEN avg_film_rate < 2
                THEN 'poor acting'
            WHEN avg_film_rate BETWEEN 2 AND 2.5
                THEN 'fair acting'
            WHEN avg_film_rate BETWEEN 2.5 AND 3.5
                THEN 'good acting'
            WHEN avg_film_rate > 3.5
                THEN 'suberb acting'
            ELSE 'error'
       END AS acting_level
FROM sakila3_7.actor_analytics;





-- Drugi krok, calosc.

SELECT count(*) AS "number of amounts",
       SUM(actor_payload) AS "summary of payouts",
       SUM(films_amount) AS "number of films",
       AVG(avg_film_rate) AS `average film rate`,
       CASE
            WHEN avg_film_rate < 2
                THEN 'poor acting'
            WHEN avg_film_rate BETWEEN 2 AND 2.5
                THEN 'fair acting'
            WHEN avg_film_rate BETWEEN 2.5 AND 3.5
                THEN 'good acting'
            WHEN avg_film_rate > 3.5
                THEN 'suberb acting'
            ELSE 'error'
       END AS acting_level
FROM sakila3_7.actor_analytics
GROUP BY acting_level;