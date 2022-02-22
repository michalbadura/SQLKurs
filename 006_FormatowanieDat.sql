/*
 Formatowanie dat
W tabeli sakila.payment znajdują się informacje o płatnościach dokonywanych przez klientów wypożyczalni DVD. Napisz kwerendę, która wyświetli kolumnę payment_date w następujących formatach:

'rok/miesiąc/dzień',
'rok-nazwa_miesiąca-dzień_tygodnia',
'rok-numer_tygodnia',
'rok/miesiąc/dzień@nazwa_dnia_tygodnia',
'rok/miesiąc/dzień@numer_dnia_tygodnia'.
Posłuż się dokumentacją (https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_date-format) w celu odnalezienia odpowiednich parametrów.
 */


-- 'rok/miesiąc/dzień',

SELECT DATE_FORMAT(payment_date, '%Y-%m-%e')
FROM sakila3_7.payment;


-- 'rok-nazwa_miesiąca-dzień_tygodnia',

SELECT DATE_FORMAT(payment_date, '%Y-%M-%W')
FROM sakila3_7.payment;


-- 'rok-numer_tygodnia',

SELECT DATE_FORMAT(payment_date, '%Y-%v')
FROM sakila3_7.payment;


-- 'rok/miesiąc/dzień@nazwa_dnia_tygodnia',2

SELECT DATE_FORMAT(payment_date, '%Y-%m-%e@%W')
FROM sakila3_7.payment;


-- 'rok/miesiąc/dzień@numer_dnia_tygodnia'.

SELECT DATE_FORMAT(payment_date, '%Y-%m-%e@%w')
FROM sakila3_7.payment;