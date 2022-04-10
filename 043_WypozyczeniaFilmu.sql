/*
Bazując na analogii z transakcji bankowej, napisz procedurę film_rental, która sprawdzi na podstawie tabeli trigger_exercise.stock_part_1, czy dany film_id można wypożyczyć - jeśli tak, pomniejsz zapas o jeden i zwróć 1, w przeciwnym wypadku zwróć 0.

Przykład zastosowania:

CALL film_rental(1)

Skorzystaj tutaj z mechanizmu transakcji, wykonując poniższe kroki:

Najpierw napisz kwerendę, która znajdzie film oraz pomniejszy jego inwentarz o 1,

Jeśli film został znaleziony oraz jego liczba jest wystarczająca, by wypożyczyć, zatwierdź transakcję,
W przeciwnym wypadku wycofaj.
*/

drop procedure  film_rental;
create procedure film_rental(in film_id_param int)
begin
    start transaction;
    update stock_part_1 s set stock = stock - 1 where s.film_id = film_id_param;

    set @new_stock_value =  (select stock from stock_part_1 where film_id = film_id_param);
    if @new_stock_value = 0 then
        rollback;
    else
        commit;
    end if;
end;

call film_rental(24);