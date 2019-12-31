使用聚合函数进行查询，就是聚合查询，它可以快速获得结果。 
select count(*) from students; -- 这也是一个聚合查询
还有其他的聚合函数：
sum avg max min
max 和 min函数并不限制于数值类型，如果是字符类型，max会返回排序最前的字符， min会返回排序最后的字符。

获得总页数的sql
select ceiling(count(*)/3) from students

