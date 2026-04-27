

-- en postgresql
-- SELECT *
-- FROM usersx
-- ORDER BY name
-- LIMIT 1 OFFSET 1;

-- en sql server order by es obligatorio 
SELECT *
FROM usersx
ORDER BY name
OFFSET 1 ROWS
FETCH NEXT 1 ROWS ONLY;


select * from usersx where name like 'Mel%';
delete from usersx where name like 'Mel%';


-- eliminar tablas
DROP TABLE IF EXISTS usersx;


-- borrar los registros
DELETE FROM usersx;
TRUNCATE TABLE usersx;

