/*
Tabela tasks.california_payments jest pustą kopią tabeli sakila.payments.

Napisz kwerendę, która uzupełni ją tylko o te płatności, które pochodzą od klientów posiadających adres z California.

Dodatkowo napisz zapytanie, które sprawdzi, że klienci, którzy są dostępni w tabeli tasks.california_payments, pochodzą tylko z tego obrębu.
 */

adres

SELECT * FROM tasks3_7.california_payments;

SELECT * FROM sakila3_7.payment;




SELECT *
FROM sakila3_7.payment AS pay
INNER JOIN sakila3_7.customer AS cs
    ON pay.customer_id = cs.customer_id
INNER JOIN sakila3_7.address AS ad
    ON cs.address_id = ad.address_id
WHERE ad.district = 'California';



