-- ** Deliverable 1: Get number of retiring employees by Title **
-- Create table retirement_titles
DROP TABLE retirement_titles -- Drop Table if it exists

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles


DROP TABLE unique_titles
-- Use Dictinct with Order by to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title,
t.from_date,
t.to_date
INTO unique_titles
FROM retirement_titles as rt
INNER JOIN titles as t
	ON (rt.emp_no = t.emp_no)
		WHERE rt.to_date = ('9999-01-01')
ORDER BY rt.emp_no, rt.title DESC;

SELECT * FROM unique_titles


DROP TABLE  retiring_titles_count
--Create table of number of retiring by title
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles_count
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles_count


-- ** Deliverable 2 - Mentorship Eligibility **
SELECT DISTINCT ON (emp_no) e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date, 
de.from_date, 
de.to_date, 
t.title

INTO mentorship_eligibility
FROM employees as e
JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no