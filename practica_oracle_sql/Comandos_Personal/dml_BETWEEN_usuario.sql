--BETWEEN
--Forma 1
/*listemos el número de departamento, el apellido y salario de los empleados que
tengan un salario entre 11000 y 12000 incluidos*/
select
    DEPARTMENT_ID,
    LAST_NAME,
    SALARY
from 
    employees
where
    salary >= 11000 
  AND salary <= 12000;
  
--Forma 2
SELECT 
  department_id,
  last_name,
  salary
FROM employees
WHERE
  salary BETWEEN 11000 AND 12000;
  
/*el primer valor debe ser el menor y el segundo el
mayor.*/
SELECT 
  department_id, 
  last_name, 
  salary 
FROM
  employees 
WHERE
  last_name BETWEEN 'K' AND 'M';