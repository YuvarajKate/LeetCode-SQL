# Write your MySQL query statement below
select e.employee_id, e.name, count(m.reports_to) reports_count, round(avg(m.age)) average_age
from employees e, employees m
where e.employee_id = m.reports_to
group by e.employee_id
order by e.employee_id;