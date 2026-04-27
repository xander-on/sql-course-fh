use sql_course;

select * from city
where 
name = 'Jinzhou' AND
countrycode='CHN' AND
district = 'Liaoning';


-- necearios xq tenian varchar(max)
ALTER TABLE city
ALTER COLUMN name VARCHAR(255);

ALTER TABLE city
ALTER COLUMN district VARCHAR(255);


-- quiero cambiar el name de tabla city con id 2238

-- cambiamos por que habia dos repetidos
update city
set name = 'Jinzhou old'
where id = 2238;

select * from city
where 
name LIKE 'Jinzhou%' AND
countrycode='CHN' AND
district = 'Liaoning';

-- creamos el unique index
create unique index unique_name_countrycode_district on city(name, countrycode, district);


-- listar los constraint
sp_helpindex city


create index index_district on city(district);