/*
Napisz zapytanie, które zgrupuje wpłaty według następującej klasyfikacji:

fee - wpłaty poniżej 2,
regular - w przeciwnym wypadku.

W celu wykonania zadania użyj tabeli payment.

Wynik pogrupuj i używając SQL, odpowiedz na pytanie, jaki procent wszystkich wpłat stanowią kary (fee).
*/

SELECT * FROM sakila3_7.payment;



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



-- Zapytanie grupujace wplaty, wg. fee i regular. Opcja 'if/then'

SELECT SUM(amount) AS "sum of aunt",
       IFELSE amount BETWEEN 0 AND 2
       THEN SELECT 'fee';
FROM sakila3_7.payment
GROUP BY fees_charged;

WITH;


                                                    -- DOKONCZYC

select sum(amount), if (amount < 2, 'fee', 'regular') as payment_type
from payment
    group by payment_type;

with payment_types as (
    select sum(amount) as total_amount,
           if(amount < 2,
               'fee',
               'regular') as payment_type
    from payment
    group by payment_type
) select total_amount, payment_type, total_amount / sum(total_amount) over () from payment_types;