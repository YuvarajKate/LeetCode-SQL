# Write your MySQL query statement below
select  round(((sum(case when order_date=customer_pref_delivery_date then 1 end)/count(order_date))*100),2) immediate_percentage
from (select d.*, row_number() over(partition by customer_id order by order_date) rn
from delivery d) x
where rn = 1;