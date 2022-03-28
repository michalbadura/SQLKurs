/*
Na podstawie tabeli payment napisz zapytanie, które:

wyznaczy sumę wpłat w podziale na klienta oraz pracownika,
wyznaczy sumę wpłat per klient,
wyznaczy sumę wpłat.

Wykonaj dwie wersje tego zadania:

Używając tylko ROLLUP,

Dodając w GROUP BY klauzulę HAVING dla płatności większych od 70.
Jak różnią się wyniki zapytań? Aby było łatwiej zauważyć różnicę, zadanie wykonaj tylko dla pierwszych 4 customer (customer_id < 4).

Oczekiwany wynik zapytania (poglądowy)

+-----------+--------+-----------+
|customer_id|staff_id|payments   |
+-----------+--------+-----------+
|1          |1       |64.83      |
|1          |2       |53.85      |
|NULL       |NULL    |383.15     |
+-----------+--------+-----------+
 */

SELECT * FROM sakila3_7.payment;


SELECT p.customer_id,
       p.staff_id,
       SUM(p.amount) AS "payments"
FROM sakila3_7.payment p
WHERE p.customer_id < 4
GROUP BY p.staff_id, p.customer_id
WITH ROLLUP;


SELECT p.customer_id,
       p.staff_id,
       SUM(p.amount) AS "payments"
FROM sakila3_7.payment p
WHERE customer_id < 4
GROUP BY p.staff_id, p.customer_id
WITH ROLLUP
HAVING payments > 70;