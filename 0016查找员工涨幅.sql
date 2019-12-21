SELECT 
(
(SELECT salary 
 FROM salaries WHERE emp_no=10001
 ORDER BY from_date DESC LIMIT 0,1)
-
(SELECT salary 
 FROM salaries WHERE emp_no=10001
 ORDER BY from_date ASC LIMIT 0,1) 
)

AS growth

/*查找员工编号emp_no为10001其自入职以来的薪水salary涨幅值growth
CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`from_date`));
*/
