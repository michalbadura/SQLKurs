/*
Napisz kwerendę, która stworzy ranking aktorów na podstawie średniego ratingu z filmów, w których grali. W celu wykonania zadania przyjmij następujące założenia:

użyj widoku actor_analytics,
do stworzenia rankingu posłuż się funkcją ROW_NUMBER().
Posortuj aktorów od najlepszego do najgorszego, tj. 1 - najwyższy rating.

Dodatkowo przejrzyj tabelę i zobacz, jak traktowane są wiersze, które mają takie same wartości.

Wskazówki

Funkcja ROW_NUMBER() zwraca numer wiersza w partycji,
Możesz pominąć PARTIION BY w OVER(),
Przykład zastosowania ROW_NUMBER():
SELECT *, ROW_NUMBER() OVER (ORDER BY amount DESC)
FROM payment
 */

 SELECT * FROM sakila3_7.actor_analytics