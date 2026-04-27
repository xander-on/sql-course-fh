
SELECT continent from country;

select Distinct continent from country;

alter table country 
add CONSTRAINT country_continent_check 
check(
    continent in ('Asia', 'Europe', 'North America', 'Africa', 'Oceania', 'Antarctica', 'South America')
);


select * from country;

update country
set continent = 'Europe2'
where name = 'Aruba';


