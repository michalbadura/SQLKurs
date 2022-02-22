/*
 Predefiniowane formaty dat
Zapoznaj się z metodą GET_FORMAT() (link do dokumentacji https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_get-format), która posiada predefiniowane formaty wybranych standardów wyświetlania dat i sformatuj kolumnę payment_date z tabeli sakila.payment, zgodnie ze standardem USA.

Tak powstałą kolumnę nazwij payment_date_usa_formatted.
 */

SELECT DATE_FORMAT(payment_date, GET_FORMAT(DATE, 'USA')) AS "payment_date_usa_formatted"
FROM sakila3_7.payment;
