/*
Używając RANK, DENSE_RANK oraz ROW_NUMBER stwórz rankowanie filmów według liczby wypożyczeń.

Zwróć uwagę na wyniki poszczególnych funkcji.

Wykonaj to zadanie dodatkowo partycjonując według rating.
 */




 SELECT film_id,
        title,
        rating,
        rentals,
        RANK()
            OVER (ORDER BY rentals) AS r,
        DENSE_RANK()
            OVER (ORDER BY rentals) AS dr,
        ROW_NUMBER()
            OVER (ORDER BY rentals) AS rn
 FROM sakila3_7.film_analytics;


-- Dodatko wykonanie z partycjonowaniem wg. ratingu.

 SELECT film_id,
        title,
        rating,
        rentals,
        RANK()
            OVER (PARTITION BY rating ORDER BY rentals),
        DENSE_RANK()
            OVER (PARTITION BY rating ORDER BY rentals),
        ROW_NUMBER()
            OVER (PARTITION BY rating ORDER BY rentals)
 FROM sakila3_7.film_analytics;


