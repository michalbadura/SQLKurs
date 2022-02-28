/*
 Napisz złączenie, które połączy tabele rental oraz payment. Wyświetl tylko poniższe kolumny:

payment_id,
rental_id,
amount,
rental_date,
payment_date.
W tym zadaniu użyj INNER JOIN.

Pamiętaj o użyciu aliasów dla tabel w zapytaniu.

To i następne 2 zadania będą składowymi do stworzenia naszego pierwszego raportu wypożyczeń.

Uwaga
Jeśli w dwóch tabelach jest ta sama nazwa kolumny, SQL będzie wymagał podania, z której tabeli chcemy wyświetlić kolumnę (można używać aliasów),
 przykładowo:

SELECT
    t.col_name
FROM tab as t
 */




SELECT
       payment_id,
       p.rental_id,
       amount,
       rental_date,
       payment_date
FROM sakila3_7.payment p
INNER JOIN sakila3_7.rental r
ON p.rental_id = r.rental_id;
