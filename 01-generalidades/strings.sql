use sql_course;

select 
	id, 
	name,
	upper(name) as upper_name, 
	lower(name) as lower_name,
	len(name) as length,
	(20*id) as constant,
	concat(id,'-', name) as code
from usersx;


-- en sqlServer no existe position se usa CHARINDEX
-- el SUBSTRING requiere los 3 parametros postgres puede trabajar con 2
select 
	name,
	SUBSTRING(
		name, 
		1, 
		CHARINDEX(' ', name) -1
	) as first_name,
	SUBSTRING(
		name, 
		CHARINDEX(' ', name) +1, 
		len(name)
	) as last_name
from usersx;


update usersx
set
  first_name = SUBSTRING(name, 1, CHARINDEX(' ', name) -1),
  last_name = SUBSTRING(name, CHARINDEX(' ', name) + 1, len(name));