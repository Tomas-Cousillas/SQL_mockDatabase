-- DATA ENGINEERING:
-- 1. Create Department Table
CREATE TABLE departments(
	dept_no VARCHAR(50) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no)
);


-- 2. Create department/employee Table
SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(50) NOT NULL,
	from_date VARCHAR(50) NOT NULL,
	to_date VARCHAR(50) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


-- 3. Create Department Table
SELECT * FROM departments;

CREATE TABLE dept_manager(
	dept_no VARCHAR(50) NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date VARCHAR(50) NOT NULL,
	to_date VARCHAR(50) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


-- 4. Create Employee Table 
CREATE TABLE employees(
	emp_no INTEGER NOT NULL,
	birth_date VARCHAR(50) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(50) NOT NULL,
	hire_date VARCHAR(50) NOT NULL,
	PRIMARY KEY (emp_no)
);


-- 5. Create Salaries Table 
SELECT * FROM employees;

CREATE TABLE salaries(
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	from_date VARCHAR(50) NOT NULL,
	to_date VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) 
);


-- 6. Create Titles Table
SELECT * FROM employees;

CREATE TABLE titles(
	emp_no INTEGER NOT NULL,
	title VARCHAR(50) NOT NULL,
	from_date VARCHAR(50) NOT NULL,
	to_date VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) 
);