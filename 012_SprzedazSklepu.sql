/*
Używając danych zawartych w sakila.sales_by_store oraz sakila.sales_total znajdź te sklepy, których całkowita sprzedaż przekracza połowę sprzedaży całkowitej wypożyczalni.

Przykładowo:

Store	total_sales
A	100
B	50
Wynikiem powinien być sklep A.
 */




SELECT *
FROM sakila3_7.sales_by_store
WHERE total_sales > (SELECT total_sales FROM sales_total) / 2;