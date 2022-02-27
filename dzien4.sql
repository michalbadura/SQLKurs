




select *, case
    when avg_film_rate < 2 then 'poor actiing'
    when avg_film_rate between 2 and 2.5 then 'fair acting'
    when avg_film_rate between 2.5 and 3.5 then 'good acting'
    when avg_film_rate > 3.5 then 'suberb acting'
    end as acting_level
from sakila3_7.actor_analytics;