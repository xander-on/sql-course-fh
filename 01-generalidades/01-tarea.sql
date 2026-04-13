

-- 1. Ver todos los registros
select * from usersx;

-- 2. Ver el registro cuyo id sea igual a 10
select * from usersx 
where id = 10;

-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)
select * from usersx 
where name like 'Jim %';

-- 4. Todos los registros cuyo segundo nombre es Alexander
select * from usersx 
where name like '% Alexander';

-- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'
update usersx
set name = 'Fernando Herrera'
where id = 1;

-- 6. Borrar el último registro de la tabla
delete from usersx
where id = (select max(id) from usersx);