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


USE sakila3_7           -- USE dodane jako rozwiazanie bledu msql 1046
CREATE VIEW customer_payments AS
SELECT c.first_name AS "imię klienta",
       c.last_name AS "nazwisko klienta",
       c.email "email klienta",
       SUM(p.amount) AS "kwota wpłat",
       COUNT(p.amount) AS "liczbę wpłat",           -- wydaje mi sie, ze mozna rowniez uzyc COUNT(p.customer_id)
       AVG(p.amount) AS "średnią kwotę wpłat",
       MAX(p.payment_date) AS "data ostatniej wpłaty"
FROM sakila3_7.customer AS c
INNER JOIN sakila3_7.payment AS p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id;



-- SPRAWDZENIE

select sum("kwota wpłat") from customer_payments
having sum("kwota wpłat") <> (select sum(amount) from payment);

select sum("liczbę wpłat") from customer_payments
having sum("liczbę wpłat") <> (select count(*) from payment);