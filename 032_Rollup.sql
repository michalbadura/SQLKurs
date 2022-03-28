/*
Napisz zapytanie, które wygeneruje raport o:

sumie sprzedaży danego sklepu oraz jego pracownikach,
całkowitej sumie sprzedaży danego sklepu (bez podziału na pracowników),
całkowitej sumie sprzedaży.
Dodatkowo, posortuj wiersze w wybrany przez siebie sposób.

Wskazówka: Możesz sprawdzić swoje zapytanie używając sales_by_store, gdzie znajduje się fragment oczekiwanego wyniku.
 */






SELECT st.store_id,
       sf.staff_id,
       SUM(p.amount)
FROM sakila3_7.payment p
    INNER JOIN sakila3_7.staff sf
        ON sf.staff_id = p.staff_id
    INNER JOIN sakila3_7.store st
        ON st.store_id = sf.store_id
GROUP BY st.store_id, sf.staff_id
WITH ROLLUP;






