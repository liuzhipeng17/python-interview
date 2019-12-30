班级表classes， 学生表students。 学生表id, name, class_id

下面的做法，是将class_id设置为外键

        ALTER TABLE students
        ADD CONSTRAINT fk_class_id
        FOREIGN KEY (class_id)
        REFERENCES classes (id)

外键约束名称：fk_class_id；FOREIGN KEY，指定class_id为外键；REFERENCES classes (id) 是将外键关联到classes的id列

外键的作用：关系数据库可以保证无法插入无效的数据。即如果classes表不存在id=99的记录，students表就无法插入class_id=99的记录

外键的副作用：由于外键约束会降低数据库的性能，大部分互联网应用程序为了追求速度，并不设置外键约束，而是仅靠应用程序自身来保证逻辑的正确性。

这种情况下，class_id仅仅是一个普通的列，只是它起到了外键的作用而已。

去除外键约束：
        ALTER TABLE students
        DROP FOREIGN KEY fk_class_id
        
删除外键约束并没有删除外键这一列。删除列是通过DROP COLUMN ...实现的





