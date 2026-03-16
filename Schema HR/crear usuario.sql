-- 1. Intenta borrarlo (si falla porque no existe, no importa, sigue al paso 2)
DROP USER usuario CASCADE;

-- 2. Crea el usuario
CREATE USER usuario IDENTIFIED BY USUARIO 
DEFAULT TABLESPACE USERS 
TEMPORARY TABLESPACE TEMP;

-- 3. Asigna cuota de espacio (IMPORTANTE: Sin esto no podrás crear tablas)
ALTER USER usuario QUOTA UNLIMITED ON USERS;

-- 4. Otorga privilegios
GRANT CONNECT, RESOURCE TO usuario;
GRANT DEBUG CONNECT SESSION, DEBUG ANY PROCEDURE TO usuario;