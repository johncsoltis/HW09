Select emp.emp_no, emp.last_name, emp.first_name, emp.gender, sal.salary
from employees as emp
Join salaries as sal
On emp.emp_no = sal.emp_no;


Select *
from employees as emp
where extract (year from emp.hire_date)=1986
order by hire_date;


Select emp.emp_no, emp.first_name, emp.last_name, dept.dept_no, dept.dept_name, dm.from_date, dm.to_date
from employees as emp
Join department_manager as dm
On emp.emp_no = dm.emp_no
Join departments as dept
on  dept.dept_no = dm.dept_no;


Select de.emp_no, emp.last_name, emp.first_name, dept.dept_name
from employees as emp
join departments_employee as de
On emp.emp_no = de.emp_no
Join departments as dept
on  dept.dept_no = de.dept_no


Select * from employees
where first_name = 'Hercules'
and last_name like 'B%'


Select de.emp_no, emp.last_name, emp.first_name, dept.dept_name
from employees as emp
join departments_employee as de
On emp.emp_no = de.emp_no
Join departments as dept
on  dept.dept_no = de.dept_no
where dept_name = 'Sales'


Select de.emp_no, emp.last_name, emp.first_name, dept.dept_name
from employees as emp
join departments_employee as de
On emp.emp_no = de.emp_no
Join departments as dept
on  dept.dept_no = de.dept_no
where dept_name = 'Sales'
OR dept_name = 'Development'
order by dept_name


Select last_name, count(last_name) as lastname_count
from employees
group by last_name
order by lastname_count desc
