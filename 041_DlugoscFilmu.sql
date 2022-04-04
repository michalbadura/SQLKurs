/*
Napisz procedurę, która na podstawie długości trwania filmu (np. kolumna length z film) przypisze rekord do jednej z poniższych grup:

very short - film do 1h,
short - film do 1.5h,
normal - film do 2h,
long - film do 2.5h,
very long - film ponad 2.5h.

Procedurę nazwij film_classification.
 */


-- Pierwszy wariant, uzywam 'case......when'

CREATE PROCEDURE film_classification(IN length double)
BEGIN
    CASE
        WHEN length < 0.01 THEN
            SELECT 'wrong data, you can not turn back time xD';
        WHEN length IS NULL THEN
            SELECT 'no data';
        WHEN length BETWEEN 0.01 AND 60 THEN
            SELECT 'v. short';
        WHEN length BETWEEN 60 AND 90 THEN
            SELECT 'short';
        WHEN length BETWEEN 90 AND 120 THEN
            SELECT 'normal';
        WHEN length BETWEEN  120 AND 150 THEN
            SELECT 'long';
        WHEN length > 150 THEN
            SELECT 'v. long';
    END CASE;
END;



-- Drugi wariant, uzywam 'if......else'

CREATE PROCEDURE film_classification(IN length double)
BEGIN
    IF length BETWEEN 0.01 AND 60 THEN
        SELECT 'very short';
    ELSEIF length BETWEEN 60 AND 90 THEN
        SELECT 'short';
    ELSEIF length BETWEEN 90 AND 120 THEN
        SELECT 'normal';
    ELSEIF length BETWEEN 120 AND 150 THEN
        SELECT 'long';
    ELSEIF length > 150 THEN
        SELECT 'v. long';
    ELSEIF length < 0 THEN
        SELECT 'wrong data, you can not turn back time xD';
    ELSEIF length IS NULL THEN
        SELECT 'no data';
    END IF;
END;


-- Sprawdzenie czy dziala,

call film_classification(91);
call film_classification(-2)