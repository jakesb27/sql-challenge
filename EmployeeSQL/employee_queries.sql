-- Data Analysis | Module 9

-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT
	emp.emp_no "Employee No.",
	emp.last_name "Last Name",
	emp.first_name "First Name",
	emp.sex "Sex",
	sal.salary "Salary"
FROM
	employees emp
JOIN
	salaries sal
	ON emp.emp_no = sal.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
	emp.first_name "First Name",
	emp.last_name "Last Name",
	emp.hire_date "Hire Date"
FROM
	employees emp
WHERE
	emp.hire_date >= '1986-01-01' AND
	emp.hire_date <= '1986-12-31';

-- 3. List the manager of each department along with their department number, department name,
--    employee number, last name, and first name.
SELECT
	dma.dept_no "Department No.",
	dep.dept_name "Department Name",
	emp.emp_no "Employee No.",
	emp.last_name "Manager Last Name",
	emp.first_name "Manager First Name"
FROM
	dept_manager dma
JOIN
	departments dep
	ON dma.dept_no = dep.dept_no
JOIN
	employees emp
	ON dma.emp_no = emp.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number,
--    last name, first name, and department name.
SELECT
	dem.dept_no "Department No.",
	dep.dept_name "Department Name",
	emp.emp_no "Employee No.",
	emp.last_name "Employee Last Name",
	emp.first_name "Employee First Name"
FROM
	dept_emp dem
JOIN
	departments dep
	ON dem.dept_no = dep.dept_no
JOIN
	employees emp
	ON dem.emp_no = emp.emp_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and
--    whose last name begins with the letter B.
SELECT
	emp.first_name "First Name",
	emp.last_name "Last Name",
	emp.sex "Sex"
FROM
	employees emp
WHERE
	emp.first_name = 'Hercules' AND
	emp.last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name,
--    and first name.
SELECT
	emp.emp_no "Employee No.",
	emp.last_name "Last Name",
	emp.first_name "First Name"
FROM
	dept_emp dem
JOIN
	employees emp
	ON emp.emp_no = dem.emp_no
JOIN
	departments dep
	ON dep.dept_no = dem.dept_no
WHERE
	dep.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number,
--    last name, first name, and department name.
SELECT
	emp.emp_no "Employee No.",
	emp.last_name "Last Name",
	emp.first_name "First Name",
	dep.dept_name "Department"
FROM
	dept_emp dem
JOIN
	employees emp
	ON emp.emp_no = dem.emp_no
JOIN
	departments dep
	ON dep.dept_no = dem.dept_no
WHERE
	dep.dept_name IN ('Sales', 'Development');

-- 8. List the frequency counts, in descending order, of all the employee last names
--    (that is, how many employees share each last name).

