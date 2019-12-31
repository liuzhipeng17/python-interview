连接查询是另一种类型的多表查询。连接查询对多个表进行join运算，先确定一个主表作为结果集，然后把其他表的行有选择地连接到主表结果集上。
有两个表students， 及classes表， students表中的class_id是外键， 关联classes，现在想知道所有学生的班级名字。
select s.id, s.name, s.class_id, c.name class_name, s.gender, s.score
from students s
INNER JOIN classes c
ON s.class_id = c.id;

INNER JOIN查询的写法是：

  1 先确定主表，仍使用 from 表1的写法
  2 再确定需要连接的表， 使用inner join 表2
  3 确定连接条件， 使用on 条件
  4 可选，加上where ,order by 
  
INNER JOIN只返回同时存在于两张表的行数据，
由于students表的class_id包含1，2，3，classes表的id包含1，2，3，4，
所以，INNER JOIN根据条件s.class_id = c.id返回的结果集仅包含1，2，3。

LEFT OUTER JOIN则返回左表都存在的行。
如果我们给students表增加一行，并添加class_id=5，由于classes表并不存在id=5的行，
所以，LEFT OUTER JOIN的结果会增加一行，对应的class_name是NULL

RIGHT OUTER JOIN返回右表都存在的行。如果某一行仅在右表存在，那么结果集就会以NULL填充剩下的字段。

