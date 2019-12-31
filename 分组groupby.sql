如果我们要统计一班的学生数量，可以用select count(*) num from students where class_id=1
如果要继续统计二班、三班的学生数量，难道必须不断修改where条件吗，可使用聚合查询
select class_id, count(*) num from students groub by class_id

count()返回的结果不在是一个，而是3个。这是因为，group by 指定了按class_id分组，因此，执行select语句时，会把class_id相同的列先分组，再分别计算。


select class_id, name, count(*) from students groub by class_id； 会报错，因为聚合查询的列中，只能放入分组的列（class_id)

也可以按多个列进行分组，例如，想统计各班的男生和女生人数。

select class_id, gender, count(*) num from students group by class_id, gender;

得到的结果就是，1班男生有多少人，1班女生有多少人；2班男生有多少人，2班女生有多少人。


select class_id, gender, avg(score) from students group by class_id, gender order by class_id, gender DESC;
