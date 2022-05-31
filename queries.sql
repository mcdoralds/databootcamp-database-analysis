-- Run a query to ensure proper setup
SELECT * FROM departments;

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info
select * from dept_manager
select * from dept_emp
select * from salaries
select * from titles
