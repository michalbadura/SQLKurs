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

