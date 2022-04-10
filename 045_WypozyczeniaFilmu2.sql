/*
Zapisz procedurę film_rental_store, która sprawdzi, czy jest możliwe wypożyczenie filmu w danej wypożyczalni (tabela stock_part_2).

Gdy można (film jest dostępny), procedura powinna:

zwrócić informację o stanie magazynu po wypożyczeniu oraz informację, że można wypożyczyć.
W przeciwnej sytuacji procedura powinna:

zwrócić informację, że dana wypożyczalnia nie posiada już stanów magazynowych,
zwrócić informację czy możliwe jest wypożyczenie w drugiej, jeśli tak to tam dokonać rezerwacji, czyli pomniejszenia stanu magazynowego.
Jakie parametry musi przyjąć procedura, aby mogła zostać wykonana?

Może Ci się przydać to, zaproponuj również inne rozwiązanie.

Wskazówka
Stan magazynowy aktualizuje się poprzez usunięcie odpowiedniego rekordu z tabeli; pamiętaj, aby przed DELETE rozpocząć transakcję.
 */

 drop procedure  film_rental_store;
create procedure film_rental_store(in film_id_param int, in store_id_param int, out new_stock_value int)
begin
    start transaction;
    delete from stock_part_2 where film_id = film_id_param and store_id = store_id_param limit 1;
    if row_count() = 0 then
        rollback;
    else
        commit;
    end if;
    set new_stock_value =  (select count(*) from stock_part_2 where film_id = film_id_param and store_id = store_id_param);
end;

call film_rental_store(4, 1, @stock_value);
select @stock_value;