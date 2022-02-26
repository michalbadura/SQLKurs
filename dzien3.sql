

select sum(amount) from payment;

select customer_id, sum(amount) from payment
group by customer_id;

select customer_id, date_format(payment_date, '%Y-%m') as month, sum(amount) as total_amount from payment
group by customer_id, month
order by customer_id, total_amount desc;

select staff_id, date_format(payment_date, '%Y-%m') as month, sum(amount) as total_amount from payment
group by staff_id, month
order by staff_id, total_amount desc;

-- wplaty to jest to samo co oplaty w zadaniu



select staff_id, date_format(payment_date, '%Y-%m') as month, sum(amount) as total_amount from payment
group by staff_id, month
order by staff_id, total_amount desc;

select * from sakila3_7.payment;

create view customer_payments as select c.first_name, c.last_name, c.email, sum(p.amount) as total_payment,
                                       count(p.amount) as payment_count, avg(p.amount) as payment_avg, max(payment_date) as max_date from payment p
inner join customer c on p.customer_id = c.customer_id
group by c.customer_id;

select sum(total_payment) from customer_payments
having sum(total_payment) <> (select sum(amount) from payment);

select sum(payment_count) from customer_payments
having sum(payment_count) <> (select count(*) from payment);


drop table film_actors_count;
create temporary table film_actors_count select f.film_id, f.title, count(fa.actor_id) as actors_count from film f
inner join film_actor fa on f.film_id = fa.film_id
group by f.film_id;


-- sprawdzenie

with actors_check as (
    select film_id, count(actor_id) as actors_count from film_actor
    group by film_id)
select * from film_actors_count fac
                  inner join actors_check ac on fac.film_id = ac.film_id
where fac.actors_count <> ac.actors_count;

-- przychody filmu / tabela tymaczowa lub widok, ulatwi wykona sprawdzenia

select staff_id, customer_id, sum(amount) from payment
where customer_id < 4
group by staff_id, customer_id with rollup ;


select staff_id, customer_id, sum(amount) from payment
where customer_id < 4
group by staff_id, customer_id with rollup
having sum(amount) > 70;


create temporary table tmp_rentals_payments as
    select i.film_id, sum(p.amount) as total_payments, count(r.rental_id) as total_rentals from inventory i
inner join rental r on i.inventory_id = r.inventory_id
inner join payment p on r.rental_id = p.rental_id
group by i.film_id;

create temporary table tmp_films_actors as
    select fa.film_id, count(fa.actor_id) as actors_count from film_actor fa
group by fa.film_id;

select tfa.film_id, total_payments, total_rentals, actors_count from tmp_rentals_payments trp
inner join tmp_films_actors tfa on trp.film_id = tfa.film_id
order by total_rentals desc
limit 10;
