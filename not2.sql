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