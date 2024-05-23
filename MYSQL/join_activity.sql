-- Retrieve a list of employees
SELECT * from employees;
-- Find employees with the last name "Piveteau"
SELECT * FROM employees where last_name = "Piveteau";
-- List employees ordered by hire date in ascending order
SELECT * FROM employees order by hire_date asc;