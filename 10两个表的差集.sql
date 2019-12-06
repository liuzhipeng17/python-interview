# 不要用 not in， 推荐使用left join 

# not in 版本
SELECT emp_no
FROM employees
WHERE emp_no not in
(SELECT emp_no FROM dept_manager group by emp_no );

# left join版本
SELECT employees.emp_no FROM employees 
LEFT JOIN dept_manager 
ON employees.emp_no = dept_manager.emp_no
WHERE dept_no is NULL;
/*
获取所有非manager的员工emp_no
CREATE TABLE `dept_manager` (
`dept_no` char(4) NOT NULL,
`emp_no` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`dept_no`));
CREATE TABLE `employees` (
`emp_no` int(11) NOT NULL,
`birth_date` date NOT NULL,
`first_name` varchar(14) NOT NULL,
`last_name` varchar(16) NOT NULL,
`gender` char(1) NOT NULL,
`hire_date` date NOT NULL,
PRIMARY KEY (`emp_no`));
*/
