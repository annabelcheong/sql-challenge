--QUESTION 1--
-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.

CREATE VIEW Q1 AS --Saved as a view 'Q1' in Database

	SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary

	FROM Employees emp

	LEFT JOIN Salaries sal
		ON emp.emp_no = sal.emp_no;   

--QUESTION 2--
-- List first name, last name, and hire date for employees who were hired in 1986.--

CREATE VIEW Q1 AS --Saved as a view 'Q2' in Database

	SELECT first_name, last_name, hire_date
	FROM Employees
	WHERE hire_date >='1986-01-01' AND hire_date<='1986-12-31';

--QUESTION 3--
-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.














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

--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, sal.salary
FROM employees as e
WHERE emp_no IN(
  	SELECT salary
  	FROM salaries as sal
	);
  