




select *, case
    when avg_film_rate < 2 then 'poor actiing'
    when avg_film_rate between 2 and 2.5 then 'fair acting'
    when avg_film_rate between 2.5 and 3.5 then 'good acting'
    when avg_film_rate > 3.5 then 'suberb acting'
    end as acting_level
from sakila3_7.actor_analytics;




select sum(amount), case
        when amount < 2 then 'fee'
        when amount >=2 then 'regular'
        end as payment_type
from payment
    group by payment_type;




select sum(amount), if (amount < 2, 'fee', 'regular') as payment_type
from payment
    group by payment_type;

with payment_types as (
    select sum(amount) as total_amount, if(amount < 2, 'fee', 'regular') as payment_type
    from payment
    group by payment_type
) select total_amount, payment_type, total_amount / sum(total_amount) over () from payment_types;
