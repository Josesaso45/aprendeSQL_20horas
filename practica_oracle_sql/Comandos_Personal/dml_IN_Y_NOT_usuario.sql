--La sintaxis de IN es
--{campo | expresión} [NOT] IN lista_de_valores

 --los empleados de los departamentos 10, 20, 40 y 110
select 
    DEPARTMENT_ID,
    LAST_NAME
from 
    EMPLOYEES
where
    DEPARTMENT_ID in(10,20,40,110);
    
/* Listemos número de departamento, apellido y nombre
de quienes tengan de apellido King, Smith o Grant.*/
select
    DEPARTMENT_ID,
    LAST_NAME,
    FIRST_NAME
from 
    EMPLOYEES
where
    LAST_NAME in ('King','Smith','Grant');
    
/*los empleados que su apellido no es ni King,
ni Smith, ni Grant simplemente se antepone la palabra NOT a IN,*/
select
    DEPARTMENT_ID,
    LAST_NAME,
    FIRST_NAME
from 
    EMPLOYEES
where
    LAST_NAME not in ('King','Smith','Grant');
    
    