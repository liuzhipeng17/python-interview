SELECT d.dept_no, d.emp_no, s.salary FROM
(SELECT *
FROM   dept_manager 
WHERE  to_date = '9999-01-01') as d
INNER JOIN
(SELECT *
FROM   salaries
WHERE  to_date = '9999-01-01') as s
ON d.emp_no = s.emp_no;

# 推荐以下这种方式
SELECT d.dept_no, d.emp_no, s.salary 
FROM salaries AS s INNER JOIN dept_manager AS d 
ON d.emp_no = s.emp_no
AND d.to_date = '9999-01-01'
AND s.to_date = '9999-01-01'

