--Create tables
CREATE TABLE titles ( 
	title_id varchar PRIMARY KEY NOT NULL,
	title varchar
);

CREATE TABLE employee ( 
	emp_no int PRIMARY KEY NOT NULL,
	emp_title_id varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar
);
 

CREATE TABLE salaries ( 
	emp_no int,
	salary int   
);

CREATE TABLE department ( 
	dept_no varchar PRIMARY KEY NOT NULL,
	dept_name varchar
);

CREATE TABLE dept_manager ( 
	dept_no varchar,
	emp_no int   
);

CREATE TABLE dept_emp ( 
	emp_no int,
	dept_no varchar
);

--Adding foreign keys
ALTER TABLE dept_emp ADD FOREIGN KEY (dept_no) REFERENCES department(dept_no);

ALTER TABLE dept_emp ADD FOREIGN KEY (emp_no) REFERENCES employee(emp_no);

ALTER TABLE dept_manager ADD FOREIGN KEY (emp_no) REFERENCES employee(emp_no);

ALTER TABLE dept_manager ADD FOREIGN KEY (dept_no) REFERENCES department(dept_no);

ALTER TABLE salaries ADD FOREIGN KEY (emp_no) REFERENCES employee(emp_no); 

ALTER TABLE employee ADD FOREIGN KEY (emp_title_id) REFERENCES titles(title_id);