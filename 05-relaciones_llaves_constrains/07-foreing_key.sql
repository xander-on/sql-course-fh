

select * from country where code = 'AFG';

select * from city where countrycode = 'AFG';


INSERT INTO country
	values('AFG', 'Afghanistan', 'Asia', 'Southern Asia', 652860, 1919, 40000000, 62, 69000000, NULL, 'Afghanistan', 'Totalitarian', NULL, NULL, 'AF');

ALTER TABLE city 
    add CONSTRAINT fk_country_code
    FOREIGN KEY (countrycode) 
    REFERENCES country(code);


-- listar CONSTRAINT
select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
where TABLE_NAME = 'city';


SELECT 
    tc.TABLE_NAME,
    tc.CONSTRAINT_NAME,
    tc.CONSTRAINT_TYPE
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
WHERE tc.TABLE_NAME = 'city';


-- tarea add constraint en countrylanguage
alter table countrylanguage 
    add constraint fk_country_code_cl
    foreign key (countrycode)
    references country(code);
