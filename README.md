# SQL Challenge

UCI Data Analytics Bootcamp | Module 9 Challenge

<br />

## Summary  |  Pewlett Hackard - Employee DB

Pewlett Hackard has provided various csv files of an old employee database and is requsting information from these records. Using <a href="https://app.quickdatabasediagrams.com/#/">QuickDBD</a> I mapped out a SQL database and created the necessary tables in a <a href="https://www.postgresql.org/">PostgreSQL</a> database. I imported the csv files using pgAdmin's Import feature. Once the database was completed, I was able to query the information needed.

### ERD Model Using QuickDBD

![employees_db_schema](https://user-images.githubusercontent.com/82631980/221395603-a9994472-9618-461b-af11-13bf38110154.png)

### Sample SQL queries

```SQL
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

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
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
```

<br />

## License

[MIT](https://choosealicense.com/licenses/mit/)
