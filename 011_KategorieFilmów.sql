/*
Korzystając z własności, że UNION zwraca domyślnie zbiór, zmodyfikuj poniższą kwerendę tak, aby zwracała kategorię filmów (category) bez powtórzeń (nie używaj tutaj klauzuli DISTINCT):

SELECT * FROM sakila.nicer_but_slower_film_list
 */


SELECT category
FROM sakila3_7.nicer_but_slower_film_list
UNION
SELECT category
FROM sakila3_7.nicer_but_slower_film_list;