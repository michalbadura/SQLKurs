select price, length, greatest(price, length) from film_list;
select price, length, rating, greatest(price, length, rating) from film_list;


