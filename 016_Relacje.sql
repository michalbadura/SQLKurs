/*

Poniżej zamieszczamy pełny diagram relacji bazy Sakila.

PRT SCR w pliku 000_schemat_bazy_sakila.png

db-schema

Określ typy relacji pomiędzy:

staff oraz rental - to zadanie w ramach dodatkowego ćwiczenia rozwiążesz razem z wykładowcą,
store oraz film,
city oraz coutry,
language oraz film,
actor oraz film,
customer oraz store.
Na diagramie nie jest to widoczne, ale postaraj się używając prostych zapytań SQL dodatkowo stwierdzić, jakie kolumny uczestniczą w relacji.

Jeśli stwierdzisz, że relacja pomiędzy dwoma tabelami to n-n, podaj również nazwę tabeli pośredniej pomiędzy nimi.


 */



/*
ODPOWIEDZI:

 Relacje między:

 staff oraz rental -> 1-n,

 store oraz film -> n-n (wiele do wielu),

 city oraz country -> 1-n (jeden do wielu),

 language oraz film -> 1-n,

 actor oraz film -> n-n,

 customer oraz store -> 1-n.
 */
