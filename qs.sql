--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT E.EMP_NO
	, LAST_NAME
	, FIRST_NAME
	, GENDER
	, S.SALARY
FROM EMPLOYEES AS E
INNER JOIN SALARIES AS S
ON E.EMP_NO = S.EMP_NO

--2.List employees who were hired in 1986.
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE >= '1/1/1986' AND HIRE_DATE < '1/1/1987' 

--3.List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name
--, first name, and start and end employment dates.
SELECT D.DEPT_NO AS DEPARTMENT_NUMBER
	, D.DEPT_NAME AS DEPARTMENT_NAME
	, DM.EMP_NO AS MANAGERS_EMP_NO
	, LAST_NAME
	, FIRST_NAME
	, DM.FROM_DATE
	, DM.TO_DATE
FROM DEPARTMENTS AS D 
INNER JOIN DEPT_MANAGER AS DM ON D.DEPT_NO = DM. DEPT_NO
INNER JOIN EMPLOYEES AS E ON DM.EMP_NO = E.EMP_NO

--4.List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT DE.EMP_NO
	, LAST_NAME
	, FIRST_NAME
	, D.DEPT_NAME AS DEPARTMENT_NAME
FROM DEPARTMENTS AS D 
INNER JOIN DEPT_EMP AS DE ON D.DEPT_NO = DE. DEPT_NO
INNER JOIN EMPLOYEES AS E ON DE.EMP_NO = E.EMP_NO

--5.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME = 'Hercules' AND LAST_NAME LIKE 'B%'

--6.List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
SELECT DE.EMP_NO
	, LAST_NAME
	, FIRST_NAME
	, D.DEPT_NAME AS DEPARTMENT_NAME
FROM DEPARTMENTS AS D 
INNER JOIN DEPT_EMP AS DE ON D.DEPT_NO = DE. DEPT_NO
INNER JOIN EMPLOYEES AS E ON DE.EMP_NO = E.EMP_NO
WHERE D.DEPT_NAME = 'Sales'

--7.List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
SELECT DE.EMP_NO
	, LAST_NAME
	, FIRST_NAME
	, D.DEPT_NAME AS DEPARTMENT_NAME
FROM DEPARTMENTS AS D 
INNER JOIN DEPT_EMP AS DE ON D.DEPT_NO = DE. DEPT_NO
INNER JOIN EMPLOYEES AS E ON DE.EMP_NO = E.EMP_NO
WHERE D.DEPT_NAME IN ('Sales','Development')

--8.In descending order, list the frequency count of employee last names
--, i.e., how many employees share each last name.
SELECT LAST_NAME
	, COUNT(*)
FROM EMPLOYEES
GROUP BY LAST_NAME
ORDER BY COUNT(*) DESC