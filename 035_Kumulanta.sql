/*
 Kumulanta
Kumulanta, jak sama nazwa wskazuje, określa wartość narastającą, funkcje okna dają nam możliwość policzenia według ustalonego porządku - służy do tego klauzula ORDER BY.

W pewnym sensie ROW_NUMBER() był cicho przemyconym przykładem kumulanty w sensie liczebności elementów w partycji. W statystyce to podejście można zastosować do wyznaczenia np. dystrybuanty.

Naszym zadaniem będzie napisanie klauzuli, która wyznaczy następujące narastające wartości:

MIN dla avg_film_rate,
SUM dla actor_payload,
MAX dla longest_movie_duration.
Jako klucza do sortowania użyj actor_id - rosnąco.

Wskazówka
Odpowiednio zmodyfikuj poniższy kod:

SELECT
    *
    , ROW_NUMBER() OVER (ORDER BY actor_id)
FROM sakila.actor_analytics
 */