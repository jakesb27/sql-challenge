# SQL Challenge

UCI Data Analytics Bootcamp | Module 9 Challenge

<br />

## Summary  |  Pewlett Hackard - Employee DB

Pewlett Hackard has provided various csv files of an old employee database and is requsting information from these records. Using <a href="https://app.quickdatabasediagrams.com/#/">QuickDBD</a> I mapped out a SQL database and created the necessary tables in a <a href="https://www.postgresql.org/">PostgreSQL</a> database. I imported the csv files using pgAdmin's Import feature. Once the database was completed, I was able to query the information needed.

### ERD Model Using QuickDBD

![employees_db_schema](https://user-images.githubusercontent.com/82631980/221395603-a9994472-9618-461b-af11-13bf38110154.png)

### Sample SQL queries

```SQL
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
```

<br />
<br />

## License

[MIT](https://choosealicense.com/licenses/mit/)
