

-- DATA ANALYSIS
/* 1. List the following details of each employee: employee number, last name, 
first name, gender, and salary. */
SELECT     
employees.emp_no, employees.last_name,
employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries on employees.emp_no = salaries.emp_no;

/* 2. List employees who were hired in 1986. */
SELECT     
	employees.first_name, employees.last_name, employees.hire_date
FROM 
	employees
WHERE
	employees.hire_date LIKE '1986%'
;

/* 3. list the manager of each department with the following information: department number,
department name, the manager's employee number, last name, first name, and start and end employment dates. */
SELECT     
	dept_manager.dept_no, departments.dept_name,
	dept_manager.emp_no, employees.last_name, employees.first_name,
	dept_manager.from_date, dept_manager.to_date
	
FROM 
	((dept_manager
INNER JOIN
	departments ON dept_manager.dept_no = departments.dept_no)
INNER JOIN
	 employees ON employees.emp_no = dept_manager.emp_no);
	 

/*4. List the department of each employee with the following information: 
employee number, last name, first name, and department name. */
SELECT     
	employees.emp_no, 
	employees.last_name, 
	employees.first_name,
	departments.dept_name
	
FROM 
	((dept_manager
INNER JOIN
	departments ON dept_manager.dept_no = departments.dept_no)
INNER JOIN
	 employees ON employees.emp_no = dept_manager.emp_no);


/* 5. List all employees whose first name is "Hercules" and last names begin with "B." */

SELECT     
	employees.emp_no, employees.first_name, employees.last_name
	
FROM 
	employees
WHERE
	employees.first_name = 'Hercules' and
	employees.last_name LIKE 'B%'


/* 6. List all employees in the Sales department, including their employee number, 
last name, first name, and department name. */
SELECT     
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
	
FROM 
	((dept_manager
INNER JOIN
	departments ON dept_manager.dept_no = departments.dept_no)
INNER JOIN
	 employees ON employees.emp_no = dept_manager.emp_no)
WHERE
	departments.dept_name = 'Sales' 
;

/* 7. List all employees in the Sales and Development departments,
 including their employee number, last name, first name, and department name. */
 SELECT     
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
	
FROM 
	((dept_manager
INNER JOIN
	departments ON dept_manager.dept_no = departments.dept_no)
INNER JOIN
	 employees ON employees.emp_no = dept_manager.emp_no)
WHERE
	departments.dept_name = 'Sales' or
	departments.dept_name = 'Development'
;

/* 8. In descending order, list the frequency count of employee last names, i.e., 
how many employees share each last name. */
SELECT     
	employees.last_name,
	COUNT(employees.last_name) AS number_of_employees
FROM 
	employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC
;