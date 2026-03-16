--La sintaxis de LIKE es
--{campo | expresión} [NOT] LIKE {campo | expresión} [ESCAPE expresión]

SELECT
  department_id,
  last_name,
  first_name
FROM 
  employees
WHERE
    substr(last_name,1,1)='S';
    
--Uso de Like
/*utiliza dos comodines que sirven para indicar un carácter «_» o n caracteres «%»,
cero o varios*/

--el apellido empiece por una «S» y tengan una «i» en cualquier parte es

SELECT
  department_id,
  last_name,
  first_name
FROM 
  employees
WHERE
    last_name like 'S%i%'

--queremos que la tercera letra sea una «t» y la última una «s»
SELECT
  department_id,
  last_name,
  first_name
FROM 
  employees
WHERE
    last_name like '__t%s'
    
--Sino se quiere que se cumplan dicha condicion seria:
SELECT
  department_id,
  last_name,
  first_name
FROM 
  employees
WHERE
    last_name not like '__t%s'
    
SELECT column_name 
FROM user_tab_columns 
WHERE
table_name = 'EMPLOYEES'
AND column_name LIKE '%\_%' ESCAPE '\';