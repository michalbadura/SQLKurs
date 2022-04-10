/*

Używając tabeli payment, stwórz widok, który wyświetli następujące podsumowania:

suma wpłat w roku kalendarzowym - tę kolumnę nazwij payment_year,
suma wpłat w miesiącach kalendarzowych - tę kolumnę nazwij payment_month,
całkowita suma wpłat.
Dodatkowo zadbaj o logiczne wyświetlenie wyniku używając ORDER BY.
 */

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