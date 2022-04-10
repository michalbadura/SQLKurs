/*
Zmodyfikuj rozwiązanie poprzedniego zadania tak, aby dodatkowo zwracało liczbę filmów, która pozostała do wypożyczenia.
 */

drop procedure  film_rental;
create procedure film_rental(in film_id_param int, out new_stock_value int)
begin
    start transaction;
    update stock_part_1 s set stock = stock - 1 where s.film_id = film_id_param;

    set new_stock_value =  (select stock from stock_part_1 where film_id = film_id_param);
    if new_stock_value = 0 then
        rollback;
    else
        commit;
    end if;
end;

set @stock_value = 0;
call film_rental(24, @stock_value);

select @stock_value;