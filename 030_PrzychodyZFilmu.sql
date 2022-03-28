/*
Napisz zapytanie, które zwróci kwotę wpłat z filmu w następującym formacie:

film_id,
kwota wpłat z filmu.
Pamiętaj o sprawdzeniu poprawności zadania.
 */

SELECT * FROM sakila3_7.rental;

SELECT * FROM sakila3_7.inventory;

SELECT  * FROM sakila3_7.payment;



/*
SELECT customer_id AS client,
       date_format(payment_date, '%Y-%m') AS month,
       SUM(amount) AS monthly_income_per_client
FROM sakila3_7.payment
GROUP BY client, month
ORDER BY client, monthly_income_per_client DESC;

 */


