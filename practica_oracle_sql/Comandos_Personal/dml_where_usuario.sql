--WHERE
--    

--Listemos el número de departamento y el apellido de los empleados del departamento 10.
select 
    DEPARTMENT_ID,
    LAST_NAME
from
    employees
where
    DEPARTMENT_ID = 10;
    
 --los empleados de los departamentos 10, 20, 40 y 110
 /* Cuando tenemos que poner varias condiciones se
colocan una tras otra unidas por: AND u OR */

--Caso 1: No devuelve filas
select 
    DEPARTMENT_ID,
    LAST_NAME
from 
    employees
where
    DEPARTMENT_ID = 10 and
    DEPARTMENT_ID = 20 and
    DEPARTMENT_ID = 40 and
    DEPARTMENT_ID = 110;

--Caso 2: Si devuelve filas
select 
    DEPARTMENT_ID,
    LAST_NAME
from 
    employees
where
    DEPARTMENT_ID = 10 or
    DEPARTMENT_ID = 20 or
    DEPARTMENT_ID = 40 or
    DEPARTMENT_ID = 110;
