分页功能，其实就是Limit <m> offset <n>， 表示从结果集中取出m-n条记录
现在，把结果集分页，每页3条记录，要获取第一页的记录，使用limit 3 offset 0
select id, name, gender, score
From  students
Order by score DESC
Limit 3 offset 0;

limit 3 表示最多取3条记录 offset 0表示从0号记录开始，sql记录索引是从0开始的

要获取第二页的数据，使用 limit 3 offset 3

要获取第N页的数据， 使用 limit 3 offset 3*(N-1)

总结：limit pageSize offset pageSize*(pageIndex - 1)





