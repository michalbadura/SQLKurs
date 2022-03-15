SELECT *
FROM examples3_7.students;


INSERT INTO examples3_7.students VALUES
   (10, 'Marian', 'Kowalski', 'mariank@gmail.com', 1);


-- Usunięcie z bazy wszystkich Marianów
TRUNCATE examples3_7.students;

UPDATE examples3_7.students
SET name = 'Grzesiek'
WHERE id = 10;

