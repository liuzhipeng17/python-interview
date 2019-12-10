SELECT e.emp_no, 
       max(salary) as salary, 
       e.last_name, 
       e.first_name
FROM salaries s,employees e
WHERE s.emp_no = e.emp_no
AND s.to_date='9999-01-01'
and e.to_date='9999-01-01'
AND s.salary !=
(
  SELECT max(salary)
  FROM salaries 
  WHERE to_date='9999-01-01'
)
