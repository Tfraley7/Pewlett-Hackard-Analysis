-- Deliverable 1: Create a Retirement Titles table
Select em.emp_no,
		em.first_name,
		em.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
		INTO retiring_emp_title
		FROM employees AS em
		LEFT JOIN titles as ti
		ON (em.emp_no = ti.emp_no)
		WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
		ORDER BY em.emp_no ASC;
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retiring_emp_title
WHERE to_date = ('9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

-- Retrievethe number of employees by their most recent job title who are about to retire.
SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Deliverable 2: 
SELECT DISTINCT ON (em.emp_no) em.emp_no,
em.first_name,
em.last_name,
em.birth_date,
de.from_date,
de.to_date,
ti.title

INTO mentorship_eligibility
FROM employees AS em
INNER JOIN dept_emp AS de
ON (em.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (em.emp_no = ti.emp_no)
WHERE (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;
