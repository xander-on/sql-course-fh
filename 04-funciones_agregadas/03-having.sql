-- El HAVING se usa para filtrar resultados después de una agrupación (GROUP BY).
use sql_course;

select 
    count(*) as total_users,
    country
from
    users
group by
    country
having
    count(*) > 5
order by
    total_users desc;



--distinct
select Distinct country from users;