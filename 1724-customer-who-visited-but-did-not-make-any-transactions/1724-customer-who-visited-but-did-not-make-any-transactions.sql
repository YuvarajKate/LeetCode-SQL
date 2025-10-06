# Write your MySQL query statement below
select v.customer_id, count(v.customer_id) count_no_trans
from visits v
where visit_id not in (select visit_id from transactions)
group by v.customer_id;