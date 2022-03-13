select e.gender, avg(salary) from salaries s
    inner join employees e on s.emp_no = e.emp_no
    where now() between from_date and to_date
group by e.gender;

