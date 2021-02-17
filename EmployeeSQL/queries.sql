
--QUESTION 1--
--*Total employees: 300,024
-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.

CREATE VIEW Q1 AS --Saved as a view 'Q1' in Database

	SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary

	FROM Employees emp

	LEFT JOIN Salaries sal
		ON emp.emp_no = sal.emp_no;   

--QUESTION 2--
-- List first name, last name, and hire date for employees who were hired in 1986.--

CREATE VIEW Q2 AS --Saved as a view 'Q2' in Database

	SELECT first_name, last_name, hire_date
	FROM Employees
	WHERE hire_date >='1986-01-01' AND hire_date<='1986-12-31';

---------------------------
--NEEDS TO BE FIXED!!!!! QUESTION 3-- 
-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

--QUESTION 3--

CREATE VIEW Q3 AS --Saved as a view 'Q3' in Database

	SELECT dep.dept_name, dm.dept_no, dm.emp_no,emp.last_name, emp.first_name
	FROM Employees as emp
		INNER JOIN Department_Managers as dm
		ON emp.emp_no=dm.emp_no
			INNER JOIN Departments as dep 
			ON dm.dept_no=dep.dept_no;

--QUESTION 4--
-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

CREATE VIEW Q4 AS --Saved as a view 'Q4' in Database

	SELECT emp.emp_no, emp.last_name, emp.first_name, ebd.dept_no, dep.dept_name
	FROM Employees AS emp
		LEFT JOIN Emps_by_Dept AS ebd 
		ON emp.emp_no=ebd.emp_no
			LEFT JOIN Departments as dep
			ON ebd.dept_no=dep.dept_no;

--QUESTION 5--
-- List first name, last name, and sex for employees whose 
-- first name is "Hercules" and last names begin with "B."

CREATE VIEW Q5 AS --Saved as a view 'Q5' in Database

	SELECT first_name, last_name, sex
	FROM Employees 
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--QUESTION 6--
-- List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.

CREATE VIEW Q6 AS --Saved as a view 'Q6' in Database

	SELECT emp.emp_no, emp.last_name, emp.first_name, ebd.dept_no, dep.dept_name
	FROM Employees AS emp
		LEFT JOIN Emps_by_Dept AS ebd 
		ON emp.emp_no=ebd.emp_no
			LEFT JOIN Departments as dep
			ON ebd.dept_no=dep.dept_no
	WHERE dep.dept_name='Sales';

--QUESTION 7--
-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

CREATE VIEW Q7 AS --Saved as a view 'Q7' in Database

	SELECT emp.emp_no, emp.last_name, emp.first_name, ebd.dept_no, dep.dept_name
		FROM Employees AS emp
			LEFT JOIN Emps_by_Dept AS ebd 
			ON emp.emp_no=ebd.emp_no
				LEFT JOIN Departments as dep
				ON ebd.dept_no=dep.dept_no
		WHERE dep.dept_name='Sales' OR dep.dept_name='Development';

--QUESTION 8--
-- In descending order, list the frequency count of 
-- employee last names, i.e., how many employees share each last name.

CREATE VIEW Q8 AS --Saved as a view 'Q8' in Database

	SELECT last_name, COUNT(last_name) AS "Last_Name_Count"
	FROM Employees
	GROUP BY last_name
	ORDER BY "Last_Name_Count" ASC;
	