
use sql_course;


select * from country;

ALTER TABLE country
ALTER COLUMN name VARCHAR(255);

create unique index unique_country_name on country(name);


--cundo tenemo varchar(max) no deja x eso el cambio
ALTER TABLE country
ALTER COLUMN continent VARCHAR(255);


create index index_country_continent on country(continent);


