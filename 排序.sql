select返回结果，默认是按主键排序的。Order by可按其他列进行排序

SELECT id, name, score, gender from students order by score DESC, gender; 

上面是按score和gender排序， 先按score降序，如果score相同按gender升序
