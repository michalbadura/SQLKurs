/*
Używając tabel tasks.payment oraz sakila.rental znajdź te wypożyczenia, które nie zostały opłacone (nie posiadają płatności).

Jakiego typu JOIN należy tutaj użyć? Czy umiesz znaleźć więcej niż jedno rozwiązanie tego zadania?

Wskazówka
Po wykonaniu JOIN, możesz śmiało filtrować wiersze powstałe po złączeniu, przykładowo:

SELECT *
FROM
        tabl1 as t1
    RIGHT JOIN
        tabl2 as t2 USING (key)
WHERE t1.col_name > 0
 */



SELECT *
FROM sakila3_7.rental AS r
    LEFT JOIN tasks3_7.payment AS p
        ON r.rental_id = p.rental_id
WHERE p.payment_id IS NULL;


-- rozwiazanie alternatywne

SELECT *
FROM tasks3_7.payment AS p
    RIGHT JOIN sakila3_7.rental AS r
        ON p.rental_id = r.rental_id
WHERE p.payment_id IS NULL;




















 select * from rental r
left join tasks1_7.payment p on r.rental_id = p.rental_id
where p.payment_id is null;

select * from tasks1_7.payment p
right join rental r on r.rental_id = p.rental_id
where p.payment_id is null;












