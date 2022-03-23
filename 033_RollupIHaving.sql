/*
W bazie danych sakila nie zostało określone usuwanie kaskadowe, na potrzeby tego zadania zapoznaj się z prostym modelem poniższej bazy tasks znajdującej się na schemacie:

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