-- Retrieve a list of employees
SELECT * from employees;
-- Find employees with the last name "Piveteau"
SELECT * FROM employees where last_name = "Piveteau";
-- List employees ordered by hire date in ascending order
SELECT * FROM employees order by hire_date asc;
-- Count the number of employees
SELECT COUNT(*) FROM employees;
-- Retrieve a list of employees along with their department names
SELECT 
	*,
    d.dept_name
FROM 
	employees e
INNER JOIN
	dept_emp de ON e.emp_no = de.emp_no
INNER JOIN
	departments d ON de.dept_no = d.dept_no;

-- Get a list of employees and their titles, including those who do not have a title currently assigned
SELECT
	*,
    t.title
FROM
	employees e
LEFT JOIN
	titles t ON e.emp_no = t.emp_no

	
	


	
