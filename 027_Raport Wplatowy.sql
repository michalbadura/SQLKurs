/*
Przygotuj raport wpłatowy na podstawie odpowiednich tabel z bazy sakila, który wyświetli następujące informacje:

imię klienta,
nazwisko klienta,
email klienta,
kwotę wpłat,
liczbę wpłat,
średnią kwotę wpłat,
datę ostatniej wpłaty.
Wynik zapytania zapisz w bazie używając widoku.

Jak sprawdzisz, czy Twoje zapytanie jest poprawne? Napisz odpowiedną kwerendę(y).
 */

SELECT * FROM sakila3_7.customer;

SELECT * FROM sakila3_7.payment;

SELECT c.first_name AS "imię klienta",
       c.last_name AS "nazwisko klienta",
       c.email "email klienta",
       SUM(p.amount) AS "kwota wpłat"

FROM sakila3_7.customer AS c
INNER JOIN sakila3_7.payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id;


SELECT customer_id AS client,
       date_format(payment_date, '%Y-%m') AS month,
       SUM(amount) AS monthly_income_per_client
FROM sakila3_7.payment
GROUP BY client, month
ORDER BY client, monthly_income_per_client DESC;


