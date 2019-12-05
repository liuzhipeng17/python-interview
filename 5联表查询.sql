# 使用Inner join
select t1.*, t2.dept_no from salaries as t1 inner join dept_manager as t2 on t1.emp_no=t2.emp_no
where t1.to_date='9999-01-01'
and t2.to_date='9999-01-01'




# 使用联合查询
select t1.*, t2.dept_no from salaries as t1, dept_manager as t2 
where t1.emp_no=t2.emp_no
  and t1.to_date='9999-01-01' 
  and t2.to_date='9999-01-01'
