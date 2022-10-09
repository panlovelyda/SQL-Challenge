--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
inner JOIN salaries AS s
on e.emp_no = s.emp_no
Order by s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date From employees
Where hire_date >='1986-01-01'
AND hire_date <='1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dma.dept_no, de.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
Inner JOIN dept_manager AS dma
ON e.emp_no = dma.emp_no
Inner JOIN departments AS de
ON dma.dept_no = de.dept_no
Order by de.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, de.dept_name
FROM employees AS e
Inner JOIN dept_emp  AS d
ON e.emp_no = d.emp_no
Inner JOIN departments AS de
ON d.dept_no = de.dept_no
Order by de.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name FROM employees
Where first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER by last_name;

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name
FROM employees AS e
Inner JOIN dept_emp AS d
ON e.emp_no = d.emp_no
Inner JOIN departments AS de
ON d.dept_no = de.dept_no
Where dept_name = 'Sales'
Order by e.emp_no;

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, de.dept_name
FROM employees AS e
Inner JOIN dept_emp AS d
ON e.emp_no = d.emp_no
Inner JOIN departments AS de
ON d.dept_no = de.dept_no
Where dept_name = 'Sales' or dept_name = 'Development'
Order by e.emp_no;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS frequency
From employees
Group By last_name
Order By frequency DESC;