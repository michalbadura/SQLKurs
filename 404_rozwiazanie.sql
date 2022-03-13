select e.gender, avg(salary) from salaries s
    inner join employees e on s.emp_no = e.emp_no
    where now() between from_date and to_date
group by e.gender;

select e.gender, d.dept_name, avg(salary), count(*) from salaries s
    inner join employees e on s.emp_no = e.emp_no
    inner join dept_emp de on s.emp_no = de.emp_no
    inner join departments d on de.dept_no = d.dept_no
    where now() between s.from_date and s.to_date
group by e.gender, d.dept_name with rollup
    order by dept_name;