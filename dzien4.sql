




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



create procedure film_classification(in length int)
begin
    if length < 60 then select 'very short';
    elseif length between 60 and 90 then select 'short';
    elseif length between 90 and 120 then select 'normal';
    elseif length between 120 and 150 then select 'long';
    else select 'very long';
    end if;
end;

call film_classification(300);



create procedure film_classification (in length integer)
begin
    case
        when length < 60 then select 'very short';
        when length between 60 and 90 then select 'short';
        when length > 90 then select 'long';
        else select 'ERROR';
        end case;
end;
call film_classification(70);
