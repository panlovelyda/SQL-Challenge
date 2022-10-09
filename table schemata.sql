DROP TABLE dept_emp

-- Create departments table
create table departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Create dept_emp table
create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL
);

-- Create employees table
create table employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date date NOT NULL,
	PRIMARY KEY (emp_no)
);

-- Create salaries table
create table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no)
);

-- Create titles table
create table titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);

-- Create dept_manager table
create table dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no)
);

