/*
W bazie danych sakila nie zostało określone usuwanie kaskadowe,
na potrzeby tego zadania zapoznaj się z prostym modelem poniższej bazy tasks znajdującej się na schemacie:

SCHEMAT BAZY 000b_schemat_bazy_tasks.

Na podstawie analizy tabeli odpowiedz na poniższe pytania:

jaki jest typ relacji pomiędzy poszczególnymi parami tabel,
co się stanie, jeśli usuniesz rekord z tabeli children, czy ta operacja ma wpływ na inne tabele? Jakie?
co się stanie, jeśli usuniesz rekord z tabeli class, czy ta operacja ma wpływ na inne tabele? Jakie?
co się stanie, jeśli usuniesz rekord z tabeli school, czy ta operacja ma wpływ na inne tabele? Jakie?
napisz kwerendę, która usunie jedną ze szkół. Co się stało w innych tabelach?
używając zapytania z wykładu, określ kaskadowe relacje pomiędzy tabelami.

Kod z wykładu:

USE information_schema;

SELECT
    UNIQUE_CONSTRAINT_SCHEMA,
    TABLE_NAME,
    REFERENCED_TABLE_NAME
FROM
    referential_constraints
WHERE delete_rule = 'CASCADE'
 */





-- jaki jest typ relacji pomiędzy poszczególnymi parami tabel,

-- ODP. school_id z tabeli school jest w relacji wielu do jednego ze school_id z tabeli class. Tak samo class_id z tabeli class jest w relacji wiele do jednego względem class_id z tabeli children.



-- co się stanie, jeśli usuniesz rekord z tabeli children, czy ta operacja ma wpływ na inne tabele? Jakie?

-- ODP. Nic sie nie stan. W klasie zostana inne dzieci.



-- co się stanie, jeśli usuniesz rekord z tabeli class, czy ta operacja ma wpływ na inne tabele? Jakie?

-- ODP. Wraz z nim z ostana usuniete dzieci nalezace do tej klasy z tabeli children.



-- co się stanie, jeśli usuniesz rekord z tabeli school, czy ta operacja ma wpływ na inne tabele? Jakie?

-- ODP. Usunitea zostana rowniez klasy, a wiec i dzieci z dwoch kolejnych tabel.



-- napisz kwerendę, która usunie jedną ze szkół. Co się stało w innych tabelach?

DELETE
FROM tasks3_7.school
WHERE school_id = 3;

-- Wszystkie rekordy bedace w relacji ze szkoła numer 3 zostaly usuniete z bazy.



-- używając zapytania z wykładu, określ kaskadowe relacje pomiędzy tabelami.

SELECT
    UNIQUE_CONSTRAINT_SCHEMA,
    TABLE_NAME,
    REFERENCED_TABLE_NAME
FROM
    information_schema.referential_constraints
WHERE delete_rule = 'CASCADE'
  AND UNIQUE_CONSTRAINT_SCHEMA = 'tasks3_7';

-- child -> class, class -> school
