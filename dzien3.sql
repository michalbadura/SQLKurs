

select sum(amount) from payment;

select customer_id, sum(amount) from payment
group by customer_id;

select customer_id, date_format(payment_date, '%Y-%m') as month, sum(amount) as total_amount from payment
group by customer_id, month
order by customer_id, total_amount desc;

select staff_id, date_format(payment_date, '%Y-%m') as month, sum(amount) as total_amount from payment
group by staff_id, month
order by staff_id, total_amount desc;


