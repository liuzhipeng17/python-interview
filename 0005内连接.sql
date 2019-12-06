SELECT e.last_name, 
       e.first_name,
       d.dept_no
FROM   employees as e, dept_emp as d
where e.emp_no = d.emp_no;
