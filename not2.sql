select ra1.* from rating_analytics ra1
inner join rating_analytics ra2
on ra2.rating is null
where ra1.avg_rental_rate > ra2.avg_rental_rate;

select ra1.* from rating_analytics ra1
inner join rating_analytics ra2
on ra2.rating is null
where ra1.avg_rental_duration < ra2.avg_rental_duration;

select * from rating_analytics ra
inner join rating r on ra.rating = r.rating
where r.id_rating = 3;


select * from rating_analytics ra
inner join rating r on ra.rating = r.rating
where r.id_rating in (3,2,5);

select * from tasks1_7.school;
select * from tasks1_7.class;
select * from tasks1_7.child;

select * from tasks1_7.child ch
inner join tasks1_7.class cl on ch.class_id = cl.class_id
inner join tasks1_7.school s on s.school_id = cl.school_id
where s.school_id = 1;


delete
from tasks1_7.school
where school_id = 1;


SELECT
    UNIQUE_CONSTRAINT_SCHEMA,
    TABLE_NAME,
    REFERENCED_TABLE_NAME
FROM
    information_schema.referential_constraints
WHERE delete_rule = 'CASCADE' and UNIQUE_CONSTRAINT_SCHEMA = 'tasks1_7';