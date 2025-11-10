# Write your MySQL query statement below
select query_name, 
round(avg(rating/position),2) quality,  
round((sum(case when rating < 3 then 1 else 0 END) * 100.0) / count(*), 2) poor_query_percentage
from queries q
group by q.query_name 
