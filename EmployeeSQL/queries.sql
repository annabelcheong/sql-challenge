--IMPORT CSV FILES AND CREATE TABLES (6 TOTAL)
--1. Departments
CREATE TABLE departments(
	dept_no VARCHAR, 
	dept_name VARCHAR);
--Import departments.csv file
--Check data output with select from
SELECT *
FROM departments;

--2. EmpNo_and_DepNo
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR
	);
--Import dept_emp.csv file
--Check data output with select from
SELECT*
FROM dept_emp;

--3. Department_Manager
CREATE TABLE department_manager(
	dept_no	VARCHAR,
	emp_no INT
	);
--Import dept_manager.csv file
--Check data output with select from
SELECT *
FROM department_manager;

--4. Employees
CREATE TABLE employees(
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
	);
--Import employees.csv file
--Check data output with select from
SELECT *
FROM employees;

--5. Salaries
CREATE TABLE salaries(
	emp_no INT,
	salary INT
	);
--Import salaries.csv file
--Check data output with select from
SELECT *
FROM salaries;

--6. Titles
CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR
	);
--Import titles.csv file
--Check data output with select from
SELECT *
FROM titles;