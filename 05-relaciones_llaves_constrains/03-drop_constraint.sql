-- https://www.postgresql.org/docs/7.2/sql-altertable.html

use sql_course;

select * from country
where code = 'CRI';


alter table country drop constraint CK__country__contine__4D94879B;

alter table country 
add CONSTRAINT country_continent_check 
check(
    continent in ('Asia', 'Europe', 'North America', 'Africa', 'Oceania', 'Antarctica', 'South America', 'Central America')
);



select * from country;

update country
set continent = 'Central America'
where code = 'CRI';


SELECT * from country
where code = 'CRI';

-- ver en que consisten los constrain de una tabla
SELECT 
    cc.name AS constraint_name,
    cc.definition
FROM sys.check_constraints cc
JOIN sys.tables t 
    ON cc.parent_object_id = t.object_id
WHERE t.name = 'country';

-- de una manera mas especifica
SELECT definition
FROM sys.check_constraints
WHERE name = 'country_continent_check';

SELECT 
    cc.CONSTRAINT_NAME,
    cc.CHECK_CLAUSE
FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS cc
WHERE cc.CONSTRAINT_NAME = 'country_continent_check';