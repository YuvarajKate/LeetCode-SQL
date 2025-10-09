# Write your MySQL query statement below
select * from cinema
where description not like "boring"
having mod(id,2)!=0
order by rating desc;