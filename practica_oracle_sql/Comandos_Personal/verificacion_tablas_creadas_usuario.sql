-- 1. ¿Están mis tablas?
SELECT table_name FROM user_tables;

-- 2. ¿Tengo datos? (Debería dar 107)
SELECT COUNT(*) FROM employees;

-- 3. ¿Funciona la vista de detalles?
SELECT * FROM emp_details_view WHERE rownum <= 5;

DESC user_tables;
