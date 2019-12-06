select emp_no, inc FROM
(SELECT s.emp_no, count(1) as inc
FROM   salaries as s
GROUP BY s.emp_no) WHERE inc >15;
/*
查找薪水涨幅超过15次的员工号emp_no以及其对应的涨幅次数t
CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`from_date`));
*/
