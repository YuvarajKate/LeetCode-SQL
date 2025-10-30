select contest_id, round((count(user_id)*100.00/(select count(user_id) from users)),2) percentage
from register
group by contest_id
order by percentage DESC, contest_id;