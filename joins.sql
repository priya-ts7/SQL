# INNER JOIN
SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
    employees e
JOIN
    dept_manager dm ON e.emp_no = dm.emp_no;



# LEFT JOIN
SELECT
    e.emp_no,  
    e.first_name,  
    e.last_name,  
    dm.dept_no,  
    dm.from_date  
FROM  
    employees e  
LEFT JOIN   
	dept_manager dm ON e.emp_no = dm.emp_no  
WHERE  
    e.last_name = 'Markovitch'  
ORDER BY dm.dept_no DESC, e.emp_no;

#WHERE instead of JOIN
SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
    employees e,
    dept_manager dm
WHERE
    e.emp_no = dm.emp_no;
    
set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');

#JOIN and WHERE
SELECT
    e.first_name, e.last_name, e.hire_date, t.title
FROM
    employees e
JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    first_name = 'Margareta' AND last_name = 'Markovitch'
ORDER BY e.emp_no;   

#CROSS JOIN
SELECT
    dm.*, d.*  
FROM  
    departments d  
CROSS JOIN  
    dept_manager dm  
WHERE  
    d.dept_no = 'd009'  
ORDER BY d.dept_no;

#JOIN MULTIPLE TABLES
SELECT
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    m.from_date,
    d.dept_name
FROM
    employees e
JOIN
    dept_manager m ON e.emp_no = m.emp_no
JOIN
    departments d ON m.dept_no = d.dept_no
JOIN
    titles t ON e.emp_no = t.emp_no
WHERE t.title = 'Manager'
ORDER BY e.emp_no;

#JOIN with aggregate functions 
# Number of female and male managers
SELECT
    e.gender, COUNT(dm.emp_no)
FROM
    employees e
JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY gender;


