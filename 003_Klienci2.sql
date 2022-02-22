/*
 Napisz kwerendy, które wyświetlą informację z sakila.customer do następujących pytań:

wszystkich nieaktywnych klientów ze store_id= 1
klientów, którzy mają adres email w innej domenie niż sakilacustomer.org. Czy istnieją tacy?
klientów o unikalnych wartościach w kolumnie create_date.

 */

-- wszystkich nieaktywnych klientów ze store_id= 1

SELECT *
FROM sakila3_7.customer
WHERE store_id = '1'
  AND active = '0';


-- klientów, którzy mają adres email w innej domenie niż sakilacustomer.org. Czy istnieją tacy?



-- klientów o unikalnych wartościach w kolumnie create_date.
