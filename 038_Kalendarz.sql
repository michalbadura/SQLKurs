/*
 Kalendarz
Używając ROW_NUMBER oraz odpowiednich funkcji dat, stwórz w bazie danych tabelę calendar, która:

będzie zaczynała się od '2000-01-01',
skończy się na dacie '2030-12-31'.
W tabeli kalendarza powinny znaleźć się następujące kolumny:

data (date),
rok (date_year),
miesiąc (date_month),
dzień (date_day),
numer dnia tygodnia (day_of_week),
numer tygodnia w roku (week_of_year),
data wygenerowania kalendarza (last_update).
Podgląd na wynik tabeli:

+----------+---------+----------+--------+-----------+------------+-------------------+
|date      |date_year|date_month|date_day|day_of_week|week_of_year|last_update        |
+----------+---------+----------+--------+-----------+------------+-------------------+
|2000-01-01|2000     |1         |2       |1          |52          |2021-05-11 20:40:12|
|2000-01-02|2000     |1         |3       |2          |1           |2021-05-11 20:40:12|
|2000-01-03|2000     |1         |4       |3          |1           |2021-05-11 20:40:12|
|2000-01-04|2000     |1         |5       |4          |1           |2021-05-11 20:40:12|
|2000-01-05|2000     |1         |6       |5          |1           |2021-05-11 20:40:12|
+----------+---------+----------+--------+-----------+------------+-------------------+

Wskazówka - zacznij od odpowiedniej modyfikacji poniższego kodu

SELECT
    ROW_NUMBER() over () AS rn
FROM payment
LIMIT 100

Schemat rozwiązania zadania
Sprawdź, ile jest dni pomiędzy '2000-01-01' oraz '2030-12-31'.
W miejsce LIMIT z kwerendy powyżej wpisz wartość z poprzedniego punktu.
Używając odpowiednich funkcji dat napisz zapytanie, które zwróci widok kalendarza.
 */