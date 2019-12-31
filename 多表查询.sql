select * from 表1, 表2; 这种是是笛卡尔查询，返回的列是两列之和，返回的行是行数之积
非常小心，
可以对返回列重命名， 可以对表重命名

select 
    s.id sid,
    s.name sname,
    s.gender,
    s.score,
    c.id cid,
    c.name cname
    
From students s, classes c;




