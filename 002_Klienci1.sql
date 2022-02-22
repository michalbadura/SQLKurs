/*
 Napisz kwerendy, które wyświetlą informację z sakila.customer do następujących pytań:

wszystkich aktywnych klientów,
wszystkich aktywnych klientów albo tych, którzy zaczynają się od 'ANDRE'.
 */


-- wszystkich aktywnych klientów,

SELECT *
FROM sakila3_7.customer
WHERE active = '1';

-- wszystkich aktywnych klientów albo tych, którzy zaczynają się od 'ANDRE'.

SELECT *
FROM sakila3_7.customer
WHERE active = '1'
   XOR first_name LIKE 'ANDRE%';
