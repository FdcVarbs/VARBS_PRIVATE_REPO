-- 1. Retrieve a list of employees
SELECT * FROM employees;

-- 2. Find employees with the last name "Piveteau"
SELECT * FROM employees where last_name = "Piveteau";

-- 3. List employees ordered by hire date in ascending order
SELECT * FROM employees order by hire_date asc;

-- 4. Count the number of employees
SELECT COUNT(*) FROM employees;

-- 5. Find the number of employees hired each year
SELECT 
	YEAR(hire_date)as hire_year,
    COUNT(*) as number_of_hires
FROM
	employees
GROUP BY 
	YEAR(hire_date)
ORDER BY 
	hire_year;

-- 6. Retrieve a list of employees along with their department names
SELECT 
	e.*,
    d.dept_name
FROM 
	employees e
INNER JOIN
	dept_emp de ON e.emp_no = de.emp_no
INNER JOIN
	departments d ON de.dept_no = d.dept_no
INNER JOIN
	dept_manager dm ON e.emp_no = dm.emp_no;
	
-- 7. Get a list of employees and their titles, including those who do not have a title currently assigned
SELECT
	e.*,
    t.title
FROM
	employees e
LEFT JOIN
	titles t ON e.emp_no = t.emp_no;

-- 8. Find employees above the average salary from the Sales department
SELECT 
	e.emp_no,
    s.salary,
    d.dept_name
FROM
	employees e
JOIN
	dept_manager dm ON e.emp_no = dm.emp_no
JOIN
	dept_emp de ON e.emp_no = de.emp_no
JOIN
	departments d ON de.dept_no = d.dept_no 
    AND
	d.dept_name = "SALES"
JOIN
	salaries s ON e.emp_no = s.emp_no
WHERE s.salary > (SELECT AVG(salary)FROM salaries WHERE salaries.emp_no = e.emp_no);
    
-- List each employee along with the number of titles they have held
-- Retrieve a list of employees who are currently in a specific department

	
	


	
	


	
