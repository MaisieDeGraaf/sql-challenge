SELECT "EMPLOYEES".emp_no
,"EMPLOYEES".last_name
,"EMPLOYEES".first_name
,"EMPLOYEES".sex
,"SALARIES".salary
FROM "EMPLOYEES"
INNER JOIN "SALARIES"
ON "EMPLOYEES".emp_no = "SALARIES".emp_no
ORDER BY "EMPLOYEES".emp_no ASC;

SELECT "EMPLOYEES".emp_no
,"EMPLOYEES".last_name
,"EMPLOYEES".first_name
,"EMPLOYEES".hire_date
FROM "EMPLOYEES"
WHERE hire_date LIKE ('%1986')
ORDER BY "EMPLOYEES".hire_date ASC;

SELECT "DEPT_MANAGER".dept_no
,"DEPT_MANAGER".emp_no
,"DEPARTMENTS".dept_name
,"EMPLOYEES".last_name
,"EMPLOYEES".first_name
FROM "DEPT_MANAGER"
INNER JOIN "DEPARTMENTS"
ON "DEPT_MANAGER".dept_no = "DEPARTMENTS".dept_no
INNER JOIN "EMPLOYEES"
ON "DEPT_MANAGER".emp_no = "EMPLOYEES".emp_no

SELECT "EMPLOYEES".emp_no
,"EMPLOYEES".last_name
,"EMPLOYEES".first_name
,"DEPARTMENTS".dept_no
,"DEPARTMENTS".dept_name
FROM "EMPLOYEES"
INNER JOIN "DEPT_EMP"
ON "EMPLOYEES".emp_no = "DEPT_EMP".emp_no
INNER JOIN "DEPARTMENTS"
ON "DEPT_EMP".dept_no = "DEPARTMENTS".dept_no
ORDER BY "EMPLOYEES".emp_no ASC;

SELECT "EMPLOYEES".last_name
,"EMPLOYEES".first_name
,"EMPLOYEES".sex
FROM "EMPLOYEES"
WHERE first_name IN ('Hercules')
AND last_name LIKE ('B%')

SELECT"DEPT_EMP".emp_no
,"EMPLOYEES".last_name
,"EMPLOYEES".first_name
FROM "EMPLOYEES"
INNER JOIN "DEPT_EMP"
ON "EMPLOYEES".emp_no = "DEPT_EMP".emp_no
INNER JOIN "DEPARTMENTS"
ON "DEPT_EMP".dept_no = "DEPARTMENTS".dept_no
WHERE dept_name in ('Sales')
ORDER BY "EMPLOYEES".emp_no ASC;

SELECT	"DEPARTMENTS".dept_name
,"DEPT_EMP".emp_no
,"EMPLOYEES".last_name
,"EMPLOYEES".first_name
FROM "EMPLOYEES"
INNER JOIN "DEPT_EMP"
ON "EMPLOYEES".emp_no = "DEPT_EMP".emp_no
INNER JOIN "DEPARTMENTS"
ON "DEPT_EMP".dept_no = "DEPARTMENTS".dept_no
WHERE dept_name in ('Sales')
OR dept_name in ('Development')
ORDER BY "EMPLOYEES".emp_no ASC;

SELECT last_name,
COUNT(*) AS name_count
FROM "EMPLOYEES"
GROUP BY last_name
ORDER BY last_name ASC;