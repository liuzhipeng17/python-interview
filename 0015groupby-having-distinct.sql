SELECT title, 
        COUNT(distinct emp_no) AS t
FROM titles
GROUP BY title
HAVING t>1;

/*
从titles表获取按照title进行分组，每组个数大于等于2，给出title以及对应的数目t。
注意对于重复的emp_no进行忽略。
CREATE TABLE IF NOT EXISTS `titles` (
`emp_no` int(11) NOT NULL,
`title` varchar(50) NOT NULL,
`from_date` date NOT NULL,
`to_date` date DEFAULT NULL);
*/
