主键： 能够通过某字段唯一区分不同的记录，该字段就是主键

选择什么样的字段为主键：

1）不使用任何业务相关的字段作为主键 ，例如身份证，手机号，邮箱

   记录一旦插入到表中，主键最好不要再修改，因为主键是用来唯一定位记录的，修改了主键，会造成一系列的影响。 --所以，不要使用任何业务相关的字段作为主键，

2) 选择业务无关的字段，作为主键，把这个字段成为id

3)常见的id类型有：
  
  a:自增整数类型, 数据库在插入记录，会自动分配一个自增整数；BIGINT NOT NULL AUTO_INCREMENT
  
  b:全局唯一GUID类型，GUID算法通过网卡MAC地址、时间戳和随机数保证任意计算机在任意时间生成的字符串都是不同的


总结：主键不要带有业务含义，而应该使用BIGINT自增或者GUID类型。主键也不应该允许NULL

可以使用多个列作为联合主键，但联合主键并不常用。


允许为Null: 通常情况下，字段应该避免允许为NULL。不允许为NULL可以简化查询条件，加快查询速度，也利于应用程序读取数据后无需判断是否为NULL。


