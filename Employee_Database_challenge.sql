#Deliverable1

SELECT e.emp_no,
     e.first_name,
     e.last_name,
     i.title,
     i.from_date,
     i.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as i
ON e.emp_no = i.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles

SELECT DISTINCT ON (r.emp_no) r.emp_no,
     r.first_name,
     r.last_name,
     r.title
INTO unique_titles
FROM retirement_titles as r
ORDER BY r.emp_no ASC, r.to_date DESC;

SELECT * FROM unique_titles


SELECT COUNT(u.emp_no), u.title
INTO retiring_titles 
FROM unique_titles as u
GROUP BY u.title 
ORDER BY u.count DESC;

SELECT * FROM retiring_titles

#Deliverable2
SELECT DISTINCT ON (e.emp_no) e.emp_no,
     e.first_name,
     e.last_name,
     e.birth_date,
     de.from_date,
     de.to_date,
     i.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as i
ON e.emp_no = i.emp_no
WHERE (to_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01');
ORDER BY e.emp_no;