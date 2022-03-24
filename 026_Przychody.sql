/*
Zagreguj tabelę payment według następujących reguł:

wyznacz całkowitą kwotę wpływów wypożyczalni,
wyznacz całkowitą kwotę wpływów wypożyczalni w podziale na klientów (na razie nie pisz JOIN, użyj tylko customer_id),
wyznacz całkowitą kwotę wypożyczonych filmów w zależności od pracownika,
używając funkcji date_format wykonaj podpunkty 2. i 3. dodatkowo w rozbiciu na miesiące kalendarzowe a wyniki posortuj malejąco według klucza: client_id/staff_id rosnąco, amount - malejąco.
 */

SELECT * FROM sakila3_7.payment;

-- wyznacz całkowitą kwotę wpływów wypożyczalni,

SELECT SUM(amount) AS income
FROM sakila3_7.payment;


-- wyznacz całkowitą kwotę wpływów wypożyczalni w podziale na klientów (na razie nie pisz JOIN, użyj tylko customer_id)

SELECT customer_id AS client,
       SUM(amount) AS "total income per client"
FROM sakila3_7.payment
GROUP BY client;


-- wyznacz całkowitą kwotę wypożyczonych filmów w zależności od pracownika

SELECT staff_id,
       SUM(amount) AS "total income per employee"
FROM sakila3_7.payment
GROUP BY staff_id;


-- używając funkcji date_format wykonaj podpunkty 2. i 3. dodatkowo w rozbiciu na miesiące kalendarzowe a wyniki posortuj malejąco według klucza: client_id/staff_id rosnąco, amount - malejąco.



SELECT customer_id AS client,
       date_format(payment_date, '%Y-%m') AS month,
       SUM(amount) AS monthly_income_per_client
FROM sakila3_7.payment
GROUP BY client, month
ORDER BY client, monthly_income_per_client DESC;



SELECT staff_id,
       date_format(payment_date, '%Y-%m') AS month,
       SUM(amount) AS monthly_income_per_employee
FROM sakila3_7.payment
GROUP BY staff_id, month
ORDER BY staff_id, monthly_income_per_employee DESC;