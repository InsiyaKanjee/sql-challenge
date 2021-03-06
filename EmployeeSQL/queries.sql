--1 List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employee e
INNER JOIN salaries s
ON e.emp_no=s.emp_no;

--2 List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name,hire_date
FROM employee
WHERE hire_date LIKE '%1986';

--3 List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no,d.dept_name,dm.emp_no,e.last_name,e.first_name
FROM department d
INNER JOIN dept_manager dm
ON d.dept_no=dm.dept_no
INNER JOIN employee e
ON e.emp_no=dm.emp_no;

--4 List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT de.emp_no,e.last_name,e.first_name,d.dept_name
FROM dept_emp de
INNER JOIN department d
ON de.dept_no=d.dept_no
INNER JOIN employee e
ON e.emp_no=de.emp_no;

--5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name,e.last_name,e.sex
FROM employee e
WHERE first_name ='Hercules'
AND last_name LIKE 'B%';

--6 List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT de.emp_no,e.last_name,e.first_name,d.dept_name
FROM dept_emp de
INNER JOIN department d
ON de.dept_no=d.dept_no
INNER JOIN employee e
ON e.emp_no=de.emp_no
WHERE dept_name = 'Sales';

--7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.emp_no,e.last_name,e.first_name,d.dept_name
FROM dept_emp de
INNER JOIN department d
ON de.dept_no=d.dept_no
INNER JOIN employee e
ON e.emp_no=de.emp_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name , count(*)
FROM employee
GROUP BY last_name
ORDER BY last_name DESC;

--9 Epilogue / Aprils Fools Day
SELECT * FROM employee
WHERE emp_no = 499942;