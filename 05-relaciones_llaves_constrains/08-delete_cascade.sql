

select * from country where code = 'AFG';

select * from city where countrycode = 'AFG';

select * from countrylanguage where countrycode = 'AFG';


-- contar elemento en tabla city
-- 4078
select count(*) from city;

-- 3
select count(*) from city where countrycode = 'AFG';

-- eliminar el registro
DELETE FROM country
WHERE code = 'AFG';