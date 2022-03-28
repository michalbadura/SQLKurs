/*
Reguła Pareta w skrócie mówi o tym, że 80% społeczeństwa posiada 20% bogactwa.

W kontekście wypożyczalni video chcemy przeprowadzić podobną analizę - w tym celu wykorzystamy funkcje okna.

Posłużymy się jeszcze raz danymi o aktorach z widoku actor_analytics i zbadamy jaki % aktorów odpowiada za jaki % wpływów wypożyczalni.

Jak należy podejść do tego zadania?

Stwórz funkcję okna używając ROW_NUMBER,

Używając COUNT oraz pustego okna (OVER ()) zlicz liczbę wierszy w tabeli,

Dzieląc pkt 1./2. otrzymasz rosnący ciąg odpowiadający % aktorów,

Wykorzystaj wiedzę z podpunktów 1-3, aby wykonać analogiczne działanie dla % wpływów.

Dokonaj interpretacji wyników zapytania dla przykładowego aktora.

Wskazówka
Możesz wykonywać działania na funkcjach okna, np.

MAX(1) OVER () / COUNT(1) OVER ()

Pamiętaj o tym, aby tam, gdzie potrzeba, jednolicie posortować partycje.

Na potrzeby tego zadania przyjmiemy, że sortujemy od maksimum do minimum.

Dodatkowo możesz wspomóc się rozwiązaniem zadania o kumulantach.
 */




SELECT actor_payload,
       SUM(actor_payload) OVER (ORDER BY actor_payload DESC)
           / SUM(actor_payload) OVER () AS payload_percent,
           ROW_NUMBER() OVER (ORDER BY actor_payload DESC )
               / COUNT(*) OVER () AS count_percent
FROM sakila3_7.actor_analytics;
