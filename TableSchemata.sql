drop table employees;
CREATE TABLE employees (
  emp_no VARCHAR(10),
  emp_title_id VARCHAR(10) NOT NULL,
  birth_date VARCHAR(15),
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  sex VARCHAR(3),
  hire_date VARCHAR(15),
  PRIMARY KEY (emp_no, emp_title_id)
);

select * from employees;


drop table departments;
CREATE TABLE departments (
  dept_no VARCHAR(10) NOT NULL,
  dept_name VARCHAR(30),
  PRIMARY KEY (dept_no)
);
select * from departments;


drop table dept_manager;
CREATE TABLE dept_manager (
  dept_no VARCHAR(10) NOT NULL,
  emp_no VARCHAR(30), 
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no), 
  PRIMARY KEY (emp_no, dept_no)
);
select * from dept_manager;


drop table dept_emp;
CREATE TABLE dept_emp (
  emp_no VARCHAR(10) NOT NULL,
  dept_no VARCHAR(30),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
  PRIMARY KEY (emp_no, dept_no)
);
 select * from dept_emp;


drop table titles;
 CREATE TABLE titles (
  title_id VARCHAR(10) NOT NULL,
  title VARCHAR(30)
);
select * from titles;


drop table salaries;
CREATE TABLE salaries (
  emp_no VARCHAR(10) NOT NULL,
  salary VARCHAR(30),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no, salary)
);
select * from salaries;