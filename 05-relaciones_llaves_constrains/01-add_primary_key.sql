-- ver code repetidos
select
    code,
    count(*) as total
from
    country
group by
    code
having
    count(*) > 1;



SELECT * from country
WHERE code = 'NLD';


-- eliminar repetido
SELECT * from country
WHERE code = 'NLD' and code2 = 'NA';

DELETE from country
WHERE code = 'NLD' and code2 = 'NA';


-- agregar primary key
ALTER TABLE country
ADD PRIMARY KEY (code);

alter table country add check(
    surfacearea >= 0
);