-- Ejecuta esto para limpiar antes de reintentar
DROP VIEW emp_details_view;
DROP TABLE job_history CASCADE CONSTRAINTS;
DROP TABLE employees CASCADE CONSTRAINTS;
DROP TABLE jobs CASCADE CONSTRAINTS;
DROP TABLE departments CASCADE CONSTRAINTS;
DROP TABLE locations CASCADE CONSTRAINTS;
DROP TABLE countries CASCADE CONSTRAINTS;
DROP TABLE regions CASCADE CONSTRAINTS;
DROP SEQUENCE employees_seq;
DROP SEQUENCE departments_seq;
DROP SEQUENCE locations_seq;

--
--Consulta si tengo usuarios ya registrado
SELECT username, account_status, created 
FROM dba_users 
WHERE username = 'USUARIO';

--
--qué tablas pertenecen al esquema USUARIO y cuántas filas tiene cada una
SELECT table_name, num_rows, last_analyzed 
FROM all_tables 
WHERE owner = 'USUARIO'
ORDER BY table_name;

--
--Es la que otorga el derecho específico de iniciar sesión
GRANT CREATE SESSION TO usuario;

--Si estás en un contenedor Docker, es muy probable que estés usando una "Pluggable Database" (como XEPDB1)
--A veces los permisos necesitan un pequeño empujón para registrarse
GRANT ALL PRIVILEGES TO usuario;

--
--
ALTER USER usuario IDENTIFIED BY USUARIO ACCOUNT UNLOCK;
GRANT CREATE SESSION, RESOURCE, CONNECT TO usuario;
ALTER USER usuario QUOTA UNLIMITED ON USERS;