/*
Napisz zapytanie, które zgrupuje wpłaty według następującej klasyfikacji:

fee - wpłaty poniżej 2,
regular - w przeciwnym wypadku.

W celu wykonania zadania użyj tabeli payment.

Wynik pogrupuj i używając SQL, odpowiedz na pytanie, jaki procent wszystkich wpłat stanowią kary (fee).
*/


-- Zapytanie grupujace wplaty, wg. fee i regular. Opcja 'case/when'

SELECT SUM(amount) AS "sum of amount",
       CASE
           WHEN amount < 2
               THEN 'fee'
           WHEN amount >= 2
               THEN 'regular'
           ELSE 'error'
       END AS fees_charged
FROM sakila3_7.payment
GROUP BY fees_charged;



-- Zapytanie grupujace wplaty, wg. fee i regular. Opcja 'IF'

SELECT SUM(amount) AS "sum of amount",
       IF(amount > 2, 'regular', 'fee') -- w odroznieu od elseif, dajesz if(warunek konca, true, false.)
           AS fees_charged
FROM sakila3_7.payment
GROUP by fees_charged;



-- Druga czesc zadania, czli Wynik pogrupuj i używając SQL, odpowiedz na pytanie, jaki procent wszystkich wpłat stanowią kary (fee).




