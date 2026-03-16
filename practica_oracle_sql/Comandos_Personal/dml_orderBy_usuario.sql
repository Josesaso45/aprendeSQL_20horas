--ORDER BY 
--

/*primero por número de departamento ascendente,
segundo por el salario total en forma descendente, y 
tercero por el apellido en forma ascendente*/
select 
    DEPARTMENT_ID,
    LAST_NAME,
    SALARY * (1 + nvl(commission_pct,0)) "Salario Total"
from employees
order by 
    DEPARTMENT_ID asc,
    "Salario Total" desc,
    3 asc;
--Conclusion de analisis de consulta    
/*En la muestra de datos se puede ver cómo los departamentos van de forma ascendente: 60,
70, 80; todos los 60 se ve que el salario va de forma descendente: 9000, 6000, 4800, 4800, 4200;
y cuando coincide el salario: 4800, el apellido está en forma ascendente: Austin, Pataballa*/

