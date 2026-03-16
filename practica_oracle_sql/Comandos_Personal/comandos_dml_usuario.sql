-- Consulta de tablas
SELECT * FROM COUNTRIES;
SELECT * FROM REGIONS;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM jobs;
SELECT * FROM locations;

SELECT 
last_name, 
salary,
commission_pct
FROM employees;

--OPERACIONES ARITMETICAS CON LOS CAMPOS
--Suma de campos para el calculo de salario total

select 
    last_name,
    salary,
    commission_pct,
    salary * (1 + commission_pct) "Salario Total"
from employees;

--
--Calculo sin que devuelva valor null
select 
    last_name,
    salary,
    commission_pct,
    salary * (1 + nvl(commission_pct,0)) "Salario Total"
from employees;

--
--Uso de mayusculas y minusculas
select
    lower(email) correo,
    upper(last_name) apellido,
    initcap(first_name || ' ' || last_name) nombre_completo
from employees;

--Direccion completa de campo locations
select
    upper(city),
    lower(state_province),
    initcap(street_address || ' ' || city || ' ' || state_province) direccion_completa
from 
    locations;
    
--
--Vamos utilizar la funcion substr que en excel es EXTRAER
--(El campo a extraer,Posicion de inicio, numero de caracteres)

select substr
    (first_name,1,1) || '.' || last_name
from employees;
