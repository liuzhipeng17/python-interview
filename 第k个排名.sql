SELECT emp_no, 
       salary
FROM salaries
WHERE salary=(

select salary from salaries where to_date='9999-01-01'
group by salary order by salary desc limit 1,1
)
/*
获取当前（to_date='9999-01-01'）薪水第二多的员工的emp_no以及其对应的薪水salary
CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`from_date`));

*/
