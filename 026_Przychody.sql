/*
Zagreguj tabelę payment według następujących reguł:

wyznacz całkowitą kwotę wpływów wypożyczalni,
wyznacz całkowitą kwotę wpływów wypożyczalni w podziale na klientów (na razie nie pisz JOIN, użyj tylko customer_id),
wyznacz całkowitą kwotę wypożyczonych filmów w zależności od pracownika,
używając funkcji date_format wykonaj podpunkty 2. i 3. dodatkowo w rozbiciu na miesiące kalendarzowe a wyniki posortuj malejąco według klucza: client_id/staff_id rosnąco, amount - malejąco.
 */

 SELECT * FROM sakila3_7.payment